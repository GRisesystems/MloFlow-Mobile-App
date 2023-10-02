import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/controllers/cart_controller.dart';
import 'package:mloflow/controllers/product_controller.dart';
import 'package:mloflow/global_widget/app_icon.dart';
import 'package:mloflow/global_widget/big_text.dart';
import 'package:mloflow/global_widget/small_text.dart';
import 'package:mloflow/models/product_model.dart';
import 'package:mloflow/screens/produce_screen/product_detail.dart';

class ProduceScreen extends StatefulWidget {
  const ProduceScreen({Key? key}) : super(key: key);

  @override
  State<ProduceScreen> createState() => _ProduceScreenState();
}

class _ProduceScreenState extends State<ProduceScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final ProductController productController = Get.put(ProductController());
  final CartController cartController = Get.put(CartController());

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          child: Text("Food Produce"),
        ),
        kSizedBox2,
        TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.transparent,
            controller: _tabController,
            isScrollable: true,
            labelColor: kPrimaryColor,
            labelStyle: const TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.grey.withOpacity(0.3),
            tabs: const [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Fish",
              ),
              Tab(
                text: "Poultry",
              ),
              Tab(
                text: "Produce",
              ),
            ]),
        Expanded(
          child: TabBarView(controller: _tabController, children: [
            AllProducts(),
            OtherProducts(category: 'fish'),
            OtherProducts(category: 'poultry'),
            OtherProducts(category: 'produce'),
          ]),
        ),
      ],
    ));
  }
}

class AllProducts extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    if (productController.productList.length == 0) {
      return Container(
        alignment: Alignment.center,
        child: Text("No Products Found"),
      );
    } else {
      return Container(
        child: Expanded(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Obx(() {
                if (productController.isLoading.value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 1,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: productController.productList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return ProductDetail(
                                  product:
                                      productController.productList[index]);
                            }));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.maxFinite,
                                  height: 60,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white38,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(productController
                                              .productList[index].imageOne
                                              .toString()))),
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            BigText(
                                              text: productController
                                                  .productList[index].name,
                                              size: 14,
                                              color: kTextPrimaryColor,
                                            ),
                                            SmallText(
                                              text: productController
                                                  .productList[index].price,
                                              size: 12,
                                              color: kTextSecondaryColor,
                                            )
                                          ]),
                                      const AppIcon(
                                        icon: Icons.shopping_cart_outlined,
                                        size: 30,
                                        iconSize: 14,
                                        backgroundColor: kPrimaryColor,
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        );
                      });
                }
              })),
        ),
      );
    }
  }
}

class OtherProducts extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  final String category;

  OtherProducts({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Obx(() {
              if (productController.isLoading.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                List<ProductModel> productList =
                    productController.productList.cast<ProductModel>().toList();
                ;
                List<ProductModel> otherProducts = productList.where((product) {
                  return product.category == category;
                }).toList();
                return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 1,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: otherProducts.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return ProductDetail(product: otherProducts[index]);
                          }));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                height: 60,
                                padding: EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white38,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(otherProducts[index]
                                            .imageOne
                                            .toString()))),
                              ),
                            ),
                            Container(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          BigText(
                                            text: otherProducts[index].name,
                                            size: 14,
                                            color: kTextPrimaryColor,
                                          ),
                                          SmallText(
                                            text: otherProducts[index].price,
                                            size: 12,
                                            color: kTextSecondaryColor,
                                          )
                                        ]),
                                    const AppIcon(
                                      icon: Icons.shopping_cart_outlined,
                                      size: 30,
                                      iconSize: 14,
                                      backgroundColor: kPrimaryColor,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      );
                    });
              }
            })),
      ),
    );
  }
}
