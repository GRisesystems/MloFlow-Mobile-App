import 'package:http/http.dart' as http;
import 'package:mloflow/models/product_model.dart';

class ApiService {
  static var client = http.Client();
  // static const String url =
  //     'https://fakestoreapi.com/products'; // Replace with your API URL.

  static Future<List<ProductModel>> fetchProducts() async {
    var response =
        await client.get(Uri.parse("http://127.0.0.1:8000/products/"));
    // Use Uri.parse() for the URL.

    if (response.statusCode == 200) {
      var jsonString = response.body;
      List<ProductModel> products = productModelFromJson(
          jsonString); // Use productModelFromJson to parse the JSON.
      return products;
    } else {
      throw Exception(
          'Failed to load products'); // Throw an exception for error cases.
    }
  }
}
