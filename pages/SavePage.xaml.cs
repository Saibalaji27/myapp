using login.viewModel;

namespace login;

public partial class savePage : ContentPage
{
	public savePage(savePageViewModel vm)
    {

        InitializeComponent(); 
        BindingContext = vm;
    }

    private void Slider_ValueChanged(object sender, ValueChangedEventArgs e)
    {
        RatingValue.Text = ((int)e.NewValue).ToString();
    }
}