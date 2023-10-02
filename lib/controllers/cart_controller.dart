import 'package:get/get.dart';
import 'package:mloflow/models/cart_model.dart';
import 'package:mloflow/models/product_model.dart';

class CartController extends GetxController {
  Map<int, CartModel> _items = {};
  Map<int, CartModel> get items => _items;

  void addItem(ProductModel product, int quantity) {
    var totalQuantity = 0;
    if (_items.containsKey(product.id)) {
      _items.update(int.tryParse(product.id) ?? 0, (value) {
        totalQuantity = value.quantity + quantity;
        return CartModel(
          id: value.id,
          name: value.name,
          price: value.price,
          image: value.image,
          quantity: quantity,
          time: DateTime.now().toString(),
        );
      });

      if (totalQuantity <= 0) {
        _items.remove(product.id);
      }
    } else {
      if (quantity > 0) {
        _items.putIfAbsent(int.tryParse(product.id) ?? 0, () {
          return CartModel(
            id: product.id,
            name: product.name,
            price: product.price,
            image: product.imageOne.toString(),
            quantity: quantity,
            time: DateTime.now().toString(),
          );
        });
      } else {
        // Get.snackbar("Item Count", "You can't add to the quantity",
        //     backgroundColor: kPrimaryColor, colorText: Colors.white);
      }
    }
  }

  bool existInCart(ProductModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    }
    return false;
  }

  int getQuantity(ProductModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity;
        }
      });
    }
    return quantity;
  }

  int get totalItems {
    var totalQuantity = 0;
    _items.forEach((key, value) {
      totalQuantity += value.quantity;
    });
    return totalQuantity;
  }

  List<CartModel> get getItems {
    return _items.entries.map((e) {
      return e.value;
    }).toList();
  }
}
