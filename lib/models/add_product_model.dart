import 'dart:convert';
import 'dart:io';

class AddProduct {
  final String productName;
  final String productDescription;
  final int productPrice;
  final int productStock;
  final int productWeight;
  final String category;
  final File? productImageOne;
  final File? productImageTwo;
  final File? productImageThree;
  final File? productImageFour;

  AddProduct(
      this.category,
      this.productName,
      this.productDescription,
      this.productPrice,
      this.productStock,
      this.productWeight,
      this.productImageOne,
      this.productImageTwo,
      this.productImageThree,
      this.productImageFour);

  Map<String, dynamic> toJson() {
    return {
      "name": productName,
      "category": category,
      "description": productDescription,
      "price": productPrice,
      "stock": productStock,
      "weight": productWeight,
      "imageOne": productImageOne != null
          ? base64Encode(productImageOne!.readAsBytesSync())
          : null,
      "imageTwo": productImageTwo != null
          ? base64Encode(productImageTwo!.readAsBytesSync())
          : null,
      "imageThree": productImageThree != null
          ? base64Encode(productImageThree!.readAsBytesSync())
          : null,
      "imageFour": productImageFour != null
          ? base64Encode(productImageFour!.readAsBytesSync())
          : null,
    };
  }
}
