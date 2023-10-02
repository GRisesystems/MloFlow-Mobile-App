import 'dart:convert';

List<CartModel> productModelFromJson(String str) =>
    List<CartModel>.from(json.decode(str).map((x) => CartModel.fromJson(x)));

String productModelToJson(List<CartModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartModel {
  String id;
  String name;
  String price;
  String image;
  int quantity;
  String time;

  CartModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.quantity,
    required this.time,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
      id: json["id"],
      name: json["name"],
      price: json["price"],
      image: json["image"],
      quantity: json["quantitiy"],
      time: json["time"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "image": image,
        "quantity": quantity,
        "time": time
      };
}
