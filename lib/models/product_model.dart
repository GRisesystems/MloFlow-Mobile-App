import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(
    json.decode(str).map((x) => ProductModel.fromJson(x)));

String productModelToJson(List<ProductModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  String id;
  String name;
  String category;
  String description;
  String price;
  int stock;
  String weight;
  String? imageOne;
  String? imageTwo;
  String? imageThree;
  String? imageFour;

  ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.stock,
    required this.weight,
    required this.imageOne,
    required this.imageTwo,
    required this.imageThree,
    required this.imageFour,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        category: json["category"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        weight: json["weight"],
        imageOne: json["imageOne"],
        imageTwo: json["imageTwo"],
        imageThree: json["imageThree"],
        imageFour: json["imageFour"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category": category,
        "description": description,
        "price": price,
        "stock": stock,
        "weight": weight,
        "imageOne": imageOne,
        "imageTwo": imageTwo,
        "imageThree": imageThree,
        "imageFour": imageFour,
      };
}
