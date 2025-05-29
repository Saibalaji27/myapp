namespace login
{

    public partial class MainPage : ContentPage
    {


        public MainPage()
        {
            InitializeComponent();
        }

        private async void OnLoginClicked(object sender, EventArgs e)
        {
                 string user = username.Text;
                 string pass = password.Text;
            if (user != null && pass != null)
            {
                await Navigation.PushAsync(new NewPage1());
            }
            else
            {
                await DisplayAlert("invalid details","please enter username and password !","ok");
            }
        }
        private async void SignupPage(object sender, EventArgs e)
        {
            await Navigation.PushAsync( new signUpPage());
        }
    }
}
