import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/controllers/product_controller.dart';
import 'package:mloflow/global_widget/app_icon.dart';
import 'package:mloflow/global_widget/big_text.dart';
import 'package:mloflow/global_widget/small_text.dart';
import 'package:mloflow/models/cart_model.dart';
import 'package:mloflow/models/product_model.dart';

class ProductDetail extends StatelessWidget {
  final ProductModel product;
  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Get.find<ProductController>();
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 80,
              automaticallyImplyLeading: false,
              title: GetBuilder<ProductController>(
                  init: ProductController(),
                  builder: (productController) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: AppIcon(icon: Icons.clear)),
                        Stack(
                          children: [
                            GestureDetector(
                                onTap: (() =>
                                    Navigator.pushNamed(context, "/cart")),
                                child: AppIcon(
                                    icon: Icons.shopping_cart_outlined)),
                            productController.totalCartItem.value > 0
                                ? const Positioned(
                                    right: 0,
                                    top: 0,
                                    child: AppIcon(
                                      icon: Icons.circle,
                                      size: 20,
                                      iconColor: Colors.transparent,
                                      backgroundColor: kPrimaryColor,
                                    ),
                                  )
                                : Container(),
                            productController.totalCartItem.value > 0
                                ? Positioned(
                                    right: 7,
                                    top: 3,
                                    child: BigText(
                                        text: productController
                                            .totalCartItem.value
                                            .toString(),
                                        size: 12,
                                        color: Colors.white))
                                : Container(),
                          ],
                        )
                      ],
                    );
                  }),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(16),
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      )),
                  child: Center(child: BigText(size: 24, text: product.name)),
                ),
              ),
              pinned: true,
              backgroundColor: kPrimaryColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  product.imageOne.toString(),
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: SmallText(text: product.description),
                )
              ],
            ))
          ],
        ),
        bottomNavigationBar: GetBuilder<ProductController>(
            init: ProductController(),
            builder: (productController) {
              List<CartModel> matchingItems = productController.cartList
                  .where((cartItem) => cartItem.id == product.id)
                  .toList();

              var totalQuantity = 0;
              matchingItems.forEach((cartItem) {
                totalQuantity = cartItem.quantity;
              });
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // productController.setQuantity(false);
                            productController.removeQuantity(product);
                          },
                          child: const AppIcon(
                              iconSize: 18,
                              iconColor: Colors.white,
                              backgroundColor: kPrimaryColor,
                              icon: Icons.remove),
                        ),
                        BigText(
                          text: "${product.price} kg X ${totalQuantity}",
                          color: kTextBlackColor,
                          size: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            // productController.setQuantity(true);
                            productController.addQuantity(product);
                          },
                          child: const AppIcon(
                              iconSize: 18,
                              iconColor: Colors.white,
                              backgroundColor: kPrimaryColor,
                              icon: Icons.add),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 110,
                    padding: const EdgeInsets.only(
                        top: 30, bottom: 30, left: 20, right: 20),
                    decoration: const BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.favorite,
                                color: kPrimaryColor,
                              )),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: GestureDetector(
                              onTap: () {
                                // productController.addItem(product);
                              },
                              child: BigText(
                                text: "Add to Cart",
                                color: Colors.white,
                              ),
                            ),
                          )
                        ]),
                  ),
                ],
              );
            }));
  }
}
