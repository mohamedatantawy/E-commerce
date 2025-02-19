import 'package:commerce8/features/home/domain/entites/product_entity.dart';

import 'rating.dart';

class Allproductmodel extends ProductEntity {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  Rating rating;

  Allproductmodel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  }) : super(
          idproduct: id,
          imageproduct: image,
          nametitle: title,
          subtitle: description,
          prices: price,
          rate: rating.rate,
        );

  factory Allproductmodel.fromJson(Map<String, dynamic> json) {
    return Allproductmodel(
      id: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      rating: Rating.fromJson(json['rating'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
        'rating': rating.toJson(),
      };
}
