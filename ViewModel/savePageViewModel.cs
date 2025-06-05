using CommunityToolkit.Maui.Views;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;

using Microsoft.Maui.Controls;


using System;
using System.Collections.ObjectModel;

using System.Windows.Input;

namespace login.viewModel;

     public partial class savePageViewModel :ObservableObject
    {
    public savePageViewModel()
    {
        Options = new() { "india", "china", "japan", "korea", "usa" };
    }
    //  Items = new ObservableCollection<newPage1Model>();
    //}


    public List<string> Options { get; set; }

    [ObservableProperty]
      string name;

    [ObservableProperty]
    string country;

    [ObservableProperty]
            int rating;

    [RelayCommand]
    public async Task Save()
    {
         await Shell.Current.CurrentPage.DisplayAlert("Title", "name :"+name+ "Country :"+country+" Rating:"+rating, "OK");
        
    }

    //void Add()
    //{
    //    items.Add(new newPage1Model
    //    {

    //        name = name,
    //        country = country,
    //        rating = rating
    //    });

    //    Name = string.Empty;
    //    Country = string.Empty;
    //    Rating = 0;
    //}




}

