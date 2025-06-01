namespace login;

public partial class NewPage1 : ContentPage
{
	public NewPage1()
	{
		InitializeComponent();
	}

    private void Button_Clicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new MainPage());
    }

    private void Slider_ValueChanged(object sender, ValueChangedEventArgs e)
    {
        RatingValue.Text = ((int)e.NewValue).ToString();
    }
}