import 'package:foodpanda/models/food_model.dart';

class PicsConst {
  static List<FoodModel> dataList = [];

  static getData() {
    dataList.clear();
    for (Map<String, dynamic> i in picsList) {
      dataList.add(FoodModel.fromJson(i));
    }
  }

  static const picsList = [
    {
      'image': 'assets/images/burger.jpg',
      'rating': ' (3.66)',
      'reviews': '200',
      'time': '25 min',
      'discount': 'Flat 40% off',
      'shop': 'Burger Lab',
      'price': '600',
      'item' : 'Large burger'
    },
    {
      'image': 'assets/images/chinese.jpg',
      'rating': ' (4.66)',
      'reviews': '830',
      'time': '35 min',
      'discount': 'Flat 18% off',
      'shop': 'Baba Tikka',
      'price': '300',
      'item' : 'Chinese Noodles'
    },
    {
      'image': 'assets/images/cake.jpg',
      'rating': ' (4.06)',
      'reviews': '700',
      'time': '50 min',
      'discount': 'Flat 10% off',
      'shop': 'Pizza Stove',
      'price': '1200',
      'item' : 'Chocolate Cake'
    },
    {
      'image': 'assets/images/chicken.jpg',
      'rating': ' (4.8)',
      'reviews': '100',
      'time': '5 min',
      'discount': 'Flat 30% off',
      'shop': 'Kitchen & Knife',
      'price': '740',
      'item' : 'Fry Chicken'
    },
  ];
}
