using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Authentication.Helper;
using Authentication.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;

namespace Authentication.Controllers
{
    public class CartController : Controller
    {
        private readonly AuthenticationContext _context;
        private readonly ILogger<CartController> _logger;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly CartInvoker _cartInvoker;

        public CartController(ILogger<CartController> logger, AuthenticationContext context, IHttpContextAccessor httpContextAccessor, CartInvoker cartInvoker)
        {
            _logger = logger;
            _context = context;
            _httpContextAccessor = httpContextAccessor;
            _cartInvoker = cartInvoker;
        }

        public async Task<IActionResult> Index()
        {
            Cart cart = Cart.Instance;
            return View(cart);
        }

        [Authorize]
        public async Task<IActionResult> Order()
        {
            Cart cart = Cart.Instance;

            using (var tran = await _context.Database.BeginTransactionAsync())
            {
                try
                {
                    Order order = new Order { Date = DateTime.Today };
                    _context.Orders.Add(order);
                    await _context.SaveChangesAsync();

                    foreach (Item item in cart.List.Values)
                    {
                        OrderDetail orderDetail = new OrderDetail
                        {
                            OrderId = order.Id,
                            ProductId = item.Id,
                            Quantity = item.Quantity,
                            Price = item.Price,
                            Discount = item.Discount
                        };
                        _context.OrderDetails.Add(orderDetail);
                    }
                    await _context.SaveChangesAsync();
                    await tran.CommitAsync();

                    cart.Empty();
                    HttpContext.Session.Remove("cart");
                }
                catch (Exception ex)
                {
                    await tran.RollbackAsync();
                    _logger.LogError(ex, "Error processing order");
                }
            }

            return View(cart);
        }

        public async Task<IActionResult> Add(int id)
        {
            Product? p = await _context.Products.Include(p => p.Category).FirstOrDefaultAsync(p => p.Id == id);
            if (p == null)
            {
                return NotFound();
            }

            Item item = new Item
            {
                Id = p.Id,
                Category = p.Category.Name,
                Description = p.Description,
                Discount = p.Discount,
                Price = p.Price,
                Quantity = 1
            };

            // Thực thi lệnh thông qua CartInvoker
            ICommand command = new AddToCartCommand(Cart.Instance, item, _httpContextAccessor);
            _cartInvoker.AddCommand(command);
            _cartInvoker.ExecuteCommands(); 

            return RedirectToAction("Index", "Home");
        }

        public async Task<IActionResult> Remove(int id)
        {
            // Thực thi lệnh thông qua CartInvoker
            ICommand command = new RemoveFromCartCommand(Cart.Instance, id, _httpContextAccessor);
            _cartInvoker.AddCommand(command);
            _cartInvoker.ExecuteCommands(); 

            return RedirectToAction("Index");
        }

        public async Task<IActionResult> Empty()
        {
            // Thực thi lệnh thông qua CartInvoker
            ICommand command = new EmptyCartCommand(Cart.Instance, _httpContextAccessor);
            _cartInvoker.AddCommand(command);
            _cartInvoker.ExecuteCommands(); 

            return RedirectToAction("Index");
        }

        public async Task<IActionResult> Update(int id, int quantity)
        {
            // Thực thi lệnh thông qua CartInvoker
            ICommand command = new UpdateCartCommand(Cart.Instance, id, quantity, _httpContextAccessor);
            _cartInvoker.AddCommand(command);
            _cartInvoker.ExecuteCommands(); 

            return RedirectToAction("Index");
        }
    }
}
