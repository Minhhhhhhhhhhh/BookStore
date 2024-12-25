namespace Authentication.Helper
{
    public class AddToCartCommand : ICommand
    {
        private readonly Cart _cart;
        private readonly Item _item;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public AddToCartCommand(Cart cart, Item item, IHttpContextAccessor httpContextAccessor)
        {
            _cart = cart;
            _item = item;
            _httpContextAccessor = httpContextAccessor;
        }

        public void Execute()
        {
            _cart.Add(_item); 
            _httpContextAccessor.HttpContext.Session.Set("cart", _cart); 
        }
    }
    public class RemoveFromCartCommand : ICommand
    {
        private readonly Cart _cart;
        private readonly int _productId;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public RemoveFromCartCommand(Cart cart, int productId, IHttpContextAccessor httpContextAccessor)
        {
            _cart = cart;
            _productId = productId;
            _httpContextAccessor = httpContextAccessor;
        }

        public void Execute()
        {
            _cart.Remove(_productId); // Thực thi hành động xóa sản phẩm khỏi giỏ
            _httpContextAccessor.HttpContext.Session.Set("cart", _cart); // Cập nhật lại giỏ hàng trong Session
        }
    }

    public class UpdateCartCommand : ICommand
    {
        private readonly Cart _cart;
        private readonly int _itemId;
        private readonly int _quantity;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public UpdateCartCommand(Cart cart, int itemId, int quantity, IHttpContextAccessor httpContextAccessor)
        {
            _cart = cart;
            _itemId = itemId;
            _quantity = quantity;
            _httpContextAccessor = httpContextAccessor;
        }

        public void Execute()
        {
            _cart.Update(_itemId, _quantity);
            _httpContextAccessor.HttpContext.Session.Set("cart", _cart);
        }
    }
    public class EmptyCartCommand : ICommand
    {
        private readonly Cart _cart;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public EmptyCartCommand(Cart cart, IHttpContextAccessor httpContextAccessor)
        {
            _cart = cart;
            _httpContextAccessor = httpContextAccessor;
        }

        public void Execute()
        {
            _cart.Empty();
            _httpContextAccessor.HttpContext.Session.Set("cart", _cart);
        }
    }
}
