import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/screens/Widgets/bottomBarWidget.dart';
import 'package:mloflow/screens/Widgets/button.dart';

import 'package:mloflow/screens/Widgets/food_tile.dart';
import 'package:mloflow/screens/Widgets/scrolling.dart';
import 'package:mloflow/screens/bottom_nar_bar/feeds_page.dart';
import 'package:mloflow/screens/bottom_nar_bar/home_page.dart';
import 'package:mloflow/screens/bottom_nar_bar/orders_page.dart';
import 'package:mloflow/screens/bottom_nar_bar/profile_page.dart';
//import 'package:mloflow/screens/bottom_nar_bar/feeds_page.dart';
//import 'package:mloflow/screens/bottom_nar_bar/home_page.dart';
//import 'package:mloflow/screens/bottom_nar_bar/orders_page.dart';
//import 'package:mloflow/screens/bottom_nar_bar/profile_page.dart';
//import 'package:mloflow/screens/pages/profile_screen.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int tabselected = 0;
  final pages = [
    HomePage(),
    FeedsPage(),
    OrdersPage(),
    ProfilePage(),
  ];
  //category menu
  // List foodMenu = [
  //   Food(
  //     //name: "Chef for Hire",
  //     // price: 'Available',
  //     imagePath: 'assets/images/food1.jpg',
  //   ),
  //   Food(
  //     // name: "Instance",
  //     // price: 'Delivery',
  //     imagePath: 'assets/images/food7.jpg',
  //   ),
  //   Food(
  //     // name: "Grocery",
  //     // price: 'Available',
  //     imagePath: 'assets/images/food4.jpg',
  //   )
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      //appBar: AppBar(),
      appBar: AppBar(
        leadingWidth: 30,
        backgroundColor: Colors.grey[400],
        title: Row(
          children: [
            Text(
              'MloFlow',
              style: TextStyle(color: Colors.yellow),
            ),
            SizedBox(width: 40),
            Image.asset(
              'assets/icons/logo.png',
              fit: BoxFit.contain,
              height: 70,
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Builder(builder: (context) {
            return IconButton(
              highlightColor: Colors.amberAccent,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(CupertinoIcons.bars),
            );
          }),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            highlightColor: Colors.amberAccent,
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.grey[700],
            ),
          ),
          IconButton(
            onPressed: () {},
            highlightColor: Colors.amberAccent,
            icon: Icon(
              Icons.shopping_cart_checkout_outlined,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),

      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: true,

      body: Container(
        child: ListView(
          children: [
            //Custom App Bar Widgt
            //Search bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Search here...",
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.clear_all)),
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search,
                            color: const Color.fromARGB(255, 251, 179, 29)))),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 251, 179, 29),
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding: const EdgeInsets.all(16),
                child: Row(children: [
                  Column(
                    children: [
                      //promo message
                      Text('Get 50% Offer',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20, color: Colors.white)),
                      //redeem button
                      const SizedBox(height: 10),
                      MyButton(text: 'Redeem', onTap: () {})
                    ],
                  ),
                  const SizedBox(width: 30),
                  //image
                  Image.asset('assets/images/takeout-bag.png', height: 100),
                ]),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: 18)),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(height: 200, child: ScrollPage()),

            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending Products",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: 18)),
                  Text("See All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 251, 179, 29),
                          fontSize: 17)),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(height: 150, child: Trending_Bar()),

            SizedBox(
              height: 15,
            ),
            Container(height: 20, child: Bottom_App_Bar()),
            // Container(
            //   height: 160,
            //   child: Expanded(
            //     child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         shrinkWrap: true,
            //         itemCount: foodMenu.length,
            //         itemBuilder: (context, index) => FoodTile(
            //               food: foodMenu[index],
            //             )),
            //   ),
            // ),
          ],
        ),
      ),

      // bottomNavigationBar: NavigationBarTheme(
      //   data: NavigationBarThemeData(
      //       indicatorColor: Colors.yellow[700],
      //       labelTextStyle: MaterialStateProperty.all(TextStyle(
      //         fontSize: 14,
      //         fontWeight: FontWeight.bold,
      //         //color: Colors.yellow[700]
      //       ))),
      //   child: NavigationBar(
      //       backgroundColor: Colors.grey[300],
      //       labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      //       height: 60,
      //       selectedIndex: tabselected,
      //       animationDuration: Duration(seconds: 2),
      //       onDestinationSelected: (index) {
      //         tabselected = index;
      //         setState(() {});
      //       },
      //       destinations: const [
      //         NavigationDestination(
      //           icon: Icon(Icons.home),
      //           label: 'Home',
      //           selectedIcon: Icon(Icons.home_outlined),
      //         ),
      //         NavigationDestination(
      //           icon: Icon(Icons.feedback),
      //           label: 'Feeds',
      //           selectedIcon: Icon(Icons.feedback_outlined),
      //         ),
      //         NavigationDestination(
      //           icon: Icon(Icons.message),
      //           label: 'Orders',
      //           selectedIcon: Icon(Icons.message_outlined),
      //         ),
      //         NavigationDestination(
      //           icon: Icon(Icons.person),
      //           label: 'Profile',
      //           selectedIcon: Icon(Icons.person_outlined),
      //         ),
      //       ]),
      // ),

      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.grey[300],
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.feedback),
      //       label: 'Feeds',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),

      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     width: 100.w,
      //     height: SizerUtil.deviceType == DeviceType.tablet ? 11.h : 8.h,
      //     margin: EdgeInsets.only(left: 3.w, right: 3.w),
      //     child: Row(
      //       mainAxisSize: MainAxisSize.max,
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         CustomBottomBar(
      //             onPress: () {
      //               setState(() {
      //                 _selectedIndex = 0;
      //                 myPage.jumpToPage(_selectedIndex);
      //               });
      //             },
      //             title: "Home",
      //             iconColor:
      //                 _selectedIndex == 0 ? kPrimaryColor : kTextSecondaryColor,
      //             textColor:
      //                 _selectedIndex == 0 ? kPrimaryColor : kTextSecondaryColor,
      //             iconData: Icons.home_filled),
      //         CustomBottomBar(
      //             onPress: () {
      //               setState(() {
      //                 _selectedIndex = 1;
      //                 myPage.jumpToPage(_selectedIndex);
      //               });
      //             },
      //             title: "Cart",
      //             iconColor:
      //                 _selectedIndex == 1 ? kPrimaryColor : kTextSecondaryColor,
      //             textColor:
      //                 _selectedIndex == 1 ? kPrimaryColor : kTextSecondaryColor,
      //             iconData: Icons.shopping_cart),
      //         CustomBottomBar(
      //             onPress: () {
      //               setState(() {
      //                 _selectedIndex = 2;
      //                 myPage.jumpToPage(_selectedIndex);
      //               });
      //             },
      //             title: "Notifications",
      //             iconColor:
      //                 _selectedIndex == 2 ? kPrimaryColor : kTextSecondaryColor,
      //             textColor:
      //                 _selectedIndex == 2 ? kPrimaryColor : kTextSecondaryColor,
      //             iconData: Icons.notifications),
      //         CustomBottomBar(
      //             onPress: () {
      //               setState(() {
      //                 _selectedIndex = 3;
      //                 myPage.jumpToPage(_selectedIndex);
      //               });
      //             },
      //             title: "Profile",
      //             iconColor:
      //                 _selectedIndex == 3 ? kPrimaryColor : kTextSecondaryColor,
      //             textColor:
      //                 _selectedIndex == 3 ? kPrimaryColor : kTextSecondaryColor,
      //             iconData: Icons.person),
      //       ],
      //     ),
      //   ),
      // ),
      // body: PageView(
      //   controller: myPage,
      //   physics: const NeverScrollableScrollPhysics(),
      //   children: const <Widget>[
      //     Center(child: Text("HOme"),),
      //     Center(child: Text("Cart"),),
      //     Center(child: Text("Note"),),
      //     MyProfileScreen(),
      //   ],
      // ),
    );
  }
}
// class CustomBottomBar extends StatelessWidget {
//   const CustomBottomBar(
//       {Key? key,
//       required this.onPress,
//       required this.title,
//       required this.iconColor,
//       required this.textColor,
//       required this.iconData})
//       : super(key: key);
//   final VoidCallback onPress;
//   final String title;
//   final Color iconColor;
//   final Color textColor;
//   final IconData iconData;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//         onTap: onPress,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Icon(
//               iconData,
//               color: iconColor,
//             ),
//             kSizedBox1,
//             Text(
//               title,
//               style: Theme.of(context)
//                   .textTheme
//                   .titleSmall!
//                   .copyWith(color: textColor, fontSize: 10.sp),
//             )
//           ],
//         ));
//   }
// }
