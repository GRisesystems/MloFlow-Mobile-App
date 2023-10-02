import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/controllers/product_controller.dart';
import 'package:mloflow/global_widget/app_icon.dart';
import 'package:mloflow/global_widget/big_text.dart';
import 'package:mloflow/global_widget/small_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            top: 30,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: AppIcon(
                    icon: Icons.arrow_back_ios,
                    iconColor: Colors.white,
                    backgroundColor: kPrimaryColor,
                    iconSize: 24,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: (() => Navigator.pushNamed(context, '/home')),
                  child: AppIcon(
                    icon: Icons.home_outlined,
                    iconColor: Colors.white,
                    backgroundColor: kPrimaryColor,
                    iconSize: 24,
                  ),
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  iconColor: Colors.white,
                  backgroundColor: kPrimaryColor,
                  iconSize: 24,
                ),
              ],
            )),
        Positioned(
            top: 60,
            left: 20,
            right: 20,
            bottom: 0,
            child: Container(
                margin: EdgeInsets.only(top: 20),
                child: GetBuilder<ProductController>(
                  builder: (productController) {
                    return ListView.builder(
                        itemCount: productController.cartList.length,
                        itemBuilder: (_, index) {
                          return Container(
                            width: double.maxFinite,
                            height: 100,
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(productController
                                              .cartList[index].image)),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Container(
                                  height: 100,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        BigText(
                                          text: productController
                                              .cartList[index].name,
                                          color: Colors.black54,
                                        ),
                                        SmallText(text: "Spicy"),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            BigText(
                                              text: productController
                                                  .cartList[index].price,
                                              color: Colors.redAccent,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 15, horizontal: 15),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.white),
                                              child: Row(children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    for (var item
                                                        in productController
                                                            .productList) {
                                                      if (item.id ==
                                                          productController
                                                              .cartList[index]
                                                              .id) {
                                                        productController
                                                            .removeQuantity(
                                                                item);
                                                      }
                                                    }
                                                  },
                                                  child: Icon(
                                                    Icons.remove,
                                                    color: kIconColor,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                BigText(
                                                    text: productController
                                                        .cartList[index]
                                                        .quantity
                                                        .toString()),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                GestureDetector(
                                                    onTap: () {
                                                      for (var item
                                                          in productController
                                                              .productList) {
                                                        if (item.id ==
                                                            productController
                                                                .cartList[index]
                                                                .id) {
                                                          productController
                                                              .addQuantity(
                                                                  item);
                                                        }
                                                      }
                                                    },
                                                    child: Icon(Icons.add,
                                                        color: kIconColor))
                                              ]),
                                            ),
                                          ],
                                        )
                                      ]),
                                ))
                              ],
                            ),
                          );
                        });
                  },
                )))
      ]),
    );
  }
}
