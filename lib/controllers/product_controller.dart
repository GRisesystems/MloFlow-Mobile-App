import 'package:get/get.dart';
import 'package:mloflow/api/api_service.dart';
import 'package:mloflow/models/cart_model.dart';
import 'package:mloflow/models/product_model.dart';

class ProductController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<ProductModel> productList = RxList<ProductModel>();
  var totalCartItem = 0.obs;
  RxList<CartModel> cartList = RxList<CartModel>();

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      productList.assignAll(products);
    } finally {
      isLoading(false);
    }
    update();
  }

  void addQuantity(ProductModel product) {
    var found = false;
    for (var item in cartList) {
      if (item.id == product.id) {
        item.quantity++;
        found = true;
        break; // Exit the loop once the item is found and updated.
      }
    }

    if (!found) {
      cartList.add(CartModel(
        id: product.id,
        name: product.name,
        price: product.price,
        image: product.imageOne.toString(),
        quantity: 1,
        time: DateTime.now().toString(),
      ));
    }

    totalCartItem.value = cartList.fold<int>(
      0,
      (previousValue, element) => previousValue + element.quantity,
    );

    cartList.forEach((element) {
      print("${element.name} and ${element.quantity}");
    });
    print(cartList.length);
    update();
  }

  void removeQuantity(ProductModel product) {
    for (var item in cartList) {
      if (item.id == product.id) {
        item.quantity--;

        if (item.quantity <= 0) {
          cartList.remove(item);
        }
        break; // Exit the loop once the item is found and updated.
      }
    }

    totalCartItem.value = cartList.fold<int>(
      0,
      (previousValue, element) => previousValue + element.quantity,
    );

    cartList.forEach((element) {
      print("${element.name} and ${element.quantity}");
    });
    print(cartList.length);
    update();
  }

  // int totalCartItem() {
  //   return cartList.fold(
  //       0, (previousValue, element) => previousValue + element.quantity);
  // }

  // void setQuantity(bool isIncrement) {
  //   if (isIncrement) {
  //     if ((_inCartItem + _quantity) > 20) {
  //       _quantity = 20;
  //       Get.snackbar("Item Count", "You can't add more",
  //           backgroundColor: kPrimaryColor, colorText: Colors.white);
  //     } else {
  //       _quantity = _quantity + 1;
  //     }
  //   } else {
  //     if ((_inCartItem + _quantity) < 0) {
  //       _quantity = 0;
  //       Get.snackbar("Item Count", "You can't reduce more",
  //           backgroundColor: kPrimaryColor, colorText: Colors.white);
  //     } else {
  //       _quantity = _quantity - 1;
  //     }
  //   }
  //   update();
  // }

  // void initProduct(ProductModel product, CartController cart) {
  //   _quantity = 0;
  //   _inCartItem = 0;
  //   _cart = cart;
  //   var exist = false;
  //   exist = _cart.existInCart(product);
  //   print("exist or not ${exist.toString()}");
  //   if (exist) {
  //     _inCartItem = _cart.getQuantity(product);
  //   }
  //   print("the quantity in the cart is ${_inCartItem.toString()}");
  // }

  // void addItem(ProductModel product) {
  //   _cart.addItem(product, _quantity);
  //   _cart.items.forEach((key, value) {
  //     print(
  //         "The id ${value.id.toString()} and the quantity is ${value.quantity.toString()}");
  //   });
  //   update();
  // }

  // int get totalItems {
  //   return _cart.totalItems;
  // }

  // List<CartModel> get getItems {
  //   return _cart.getItems;
  // }
}
