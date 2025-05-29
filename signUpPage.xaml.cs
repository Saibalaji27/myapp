namespace login;

public partial class signUpPage : ContentPage
{
	public signUpPage()
	{
		InitializeComponent();
	}
    
    private async void OnSignUP (object sender, EventArgs e)
    {
        string firstName = first.Text;
        string lastName = last.Text;
        string emailid = email.Text;
        string number = phone.Text;
        if (firstName != null && lastName != null && emailid !=null && number!=null)
        {
            await Navigation.PushAsync(new MainPage());
        }
        else
        {
            await DisplayAlert("error", "please fill the above details !", "ok");
        }
    }
}