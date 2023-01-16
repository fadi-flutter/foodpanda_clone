class FoodModel {
  String image, rating, reviews, time, discount,shop,price,item;

  FoodModel(
      {required this.discount,
      required this.shop,
      required this.image,
      required this.price,
      required this.rating,
      required this.reviews,
      required this.time,required this.item});

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      price: json['price'],
      shop: json['shop'],
        discount: json['discount'],
        image: json['image'],
        rating: json['rating'],
        reviews: json['reviews'],
        time: json['time'],
        item: json['item']);
  }
}
