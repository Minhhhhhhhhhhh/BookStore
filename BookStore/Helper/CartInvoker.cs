namespace Authentication.Helper
{
    public class CartInvoker
    {
        private readonly List<ICommand> _commands = new List<ICommand>();

        // Thêm lệnh vào danh sách
        public void AddCommand(ICommand command)
        {
            _commands.Add(command);
        }

        // Thực thi tất cả các lệnh đã thêm
        public void ExecuteCommands()
        {
            foreach (var command in _commands)
            {
                command.Execute();
            }
        }

        // Xóa tất cả các lệnh
        public void ClearCommands()
        {
            _commands.Clear();
        }
    }
}