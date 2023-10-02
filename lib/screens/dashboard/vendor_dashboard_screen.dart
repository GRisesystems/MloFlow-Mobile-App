import 'package:flutter/material.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/global_widget/app_icon.dart';
import 'package:mloflow/global_widget/big_text.dart';

class VendorDashboardScreen extends StatefulWidget {
  const VendorDashboardScreen({super.key});

  @override
  State<VendorDashboardScreen> createState() => _VendorDashboardScreenState();
}

class _VendorDashboardScreenState extends State<VendorDashboardScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                text: "Welcome Kingsley",
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/add_product');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(color: kPrimaryColor),
                  child: BigText(
                    text: "Add Product",
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
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
                text: "All Supplies",
              ),
              Tab(
                text: "Listed Products",
              ),
              Tab(
                text: "Requested Products",
              ),
              Tab(
                text: "WishList",
              ),
            ]),
        Expanded(
          child: TabBarView(controller: _tabController, children: [
            AllSuppliesTab(),
            ListedProductsTab(),
            RequestedProductsTab(),
            FavoriteProductsTab(),
          ]),
        ),
      ],
    ));
  }
}

class AllSuppliesTab extends StatelessWidget {
  const AllSuppliesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/welcomeFruit.jpg")),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                ),
                BigText(text: 'Chicken'),
                BigText(text: '#5000')
              ],
            ),
          );
        });
  }
}

class ListedProductsTab extends StatelessWidget {
  const ListedProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            decoration: BoxDecoration(
              color: (index % 2 == 0) ? Colors.white : Color(0xFFF5F5F5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/welcomeFruit.jpg")),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Chicken",
                              color: kPrimaryColor,
                            ),
                            BigText(
                              text: "5kg",
                              size: 14,
                              color: Colors.redAccent,
                            ),
                            BigText(
                              text: "Ksh5000",
                              size: 18,
                              color: kTextSecondaryColor,
                            ),
                          ]),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(color: Colors.blueAccent),
                        child: BigText(
                          text: "Modify",
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  DeleteDialog());
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(color: Colors.redAccent),
                          child: BigText(
                            text: "Delete",
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class RequestedProductsTab extends StatelessWidget {
  const RequestedProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/welcomeFruit.jpg")),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Chicken",
                              color: kPrimaryColor,
                            ),
                            kSizedBox1,
                            BigText(
                              text: "2kg",
                              color: Colors.redAccent,
                              size: 14,
                            ),
                          ]),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BigText(
                        text: 'Quantity',
                        color: kTextSecondaryColor,
                        size: 14,
                      ),
                      kSizedBox1,
                      BigText(
                        text: '5',
                        color: kPrimaryColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class FavoriteProductsTab extends StatelessWidget {
  const FavoriteProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/welcomeFruit.jpg")),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Chicken",
                              color: kPrimaryColor,
                            ),
                            BigText(
                              text: "2kg",
                              color: Colors.redAccent,
                              size: 14,
                            ),
                            BigText(
                              text: "Ksh5000",
                              size: 18,
                              color: kTextSecondaryColor,
                            ),
                          ]),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppIcon(
                        icon: Icons.favorite,
                        iconColor: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      BigText(
                        text: '5',
                        color: Colors.redAccent,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: const Text('AlertDialog Title'),
      content: const Text(
        'Are you sure you want to delete this product?',
        style: TextStyle(color: kPrimaryColor, fontSize: 18),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text(
            'Delete',
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
      ],
    );
  }
}
