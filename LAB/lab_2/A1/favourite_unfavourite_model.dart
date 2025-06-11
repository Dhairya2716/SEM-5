import './Utils/import_export.dart';

class FavouriteModel {
  static final List<Map<String, dynamic>> favouriteList = [
    {
      "name": "Dhairya",
      "description": "A calm and quiet kid",
      "isFavourite": false,
    },
    {
      "name": "Malay",
      "description": "Daring person",
      "isFavourite": false,
    },
    {
      "name": "Meet",
      "description": "peaceful person",
      "isFavourite": false,
    },
    {
      "name": "Kalp",
      "description": "Prompt Engineer",
      "isFavourite": false,
    },
  ];

  void toggleFavourite(int index) {
    favouriteList[index]['isFavourite'] = !favouriteList[index]['isFavourite'];
  }
}