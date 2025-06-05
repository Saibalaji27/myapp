namespace login
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            
            Routing.RegisterRoute(nameof(savePage), typeof(savePage));
            Routing.RegisterRoute(nameof(signUpPage), typeof(signUpPage));
           
        }
    }
}
