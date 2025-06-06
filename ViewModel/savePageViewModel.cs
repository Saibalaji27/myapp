
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using login.model;
using System.Collections.ObjectModel;
using System.Text.Json;
using System.IO;
using Microsoft.Maui.Devices;

namespace login.viewModel;

     public partial class savePageViewModel :ObservableObject
    {
    public savePageViewModel()
    {
        Options = new ObservableCollection<string> { "India", "China", "Japan", "Korea", "USA" };

    }

    public ObservableCollection<string> Options { get; set; }
       
        [ObservableProperty]
          string name;

        [ObservableProperty]
        string country;

        [ObservableProperty]
        int rating;

    public async Task SaveData()
    {
        var person = new DataModel
        {
            Name = name,
            Country = country,
            Rating = rating
        };

        string json = JsonSerializer.Serialize(person);

        string filePath = Path.Combine(FileSystem.AppDataDirectory, "Data.json");

        await File.WriteAllTextAsync(filePath, json);
    }

    public async Task showData()
    {
        string filePath = Path.Combine(FileSystem.AppDataDirectory, "Data.json");

        if (File.Exists(filePath))
        {
            string json = await File.ReadAllTextAsync(filePath);
            var person = JsonSerializer.Deserialize<DataModel>(json);

            if (person != null)
            {
                name = person.Name;
                country = person.Country;
                rating = person.Rating;
            }
            await Shell.Current.DisplayAlert("details","Name :" +person.Name +"-country:"+person.Country+"-rating:"+person.Rating, "OK");

        }
    }


    [RelayCommand]
        public async Task Save()
        {
             await SaveData();
        
        }
    [RelayCommand]
    public async Task Show()
    {
        await showData();

    }

}

