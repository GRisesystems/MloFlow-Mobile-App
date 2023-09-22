import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mloflow/screens/bottom_nar_bar/profile_page.dart';

import 'package:mloflow/screens/bottom_nar_bar/orders_page.dart';

//import 'package:mloflow/screens/main_screen/main_screen.dart';

class Bottom_App_Bar extends StatefulWidget {
  const Bottom_App_Bar({Key? key}) : super(key: key);
  static String routeName = "Bottom_App_Bar";
  @override
  State<Bottom_App_Bar> createState() => _Bottom_App_BarState();
}

class _Bottom_App_BarState extends State<Bottom_App_Bar> {
  int tabselected = 0;
  final screens = [
    OrdersPage(),
    ProfilePage(),
    OrdersPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[tabselected],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Color(0xFFFBC24A),
            labelTextStyle: MaterialStateProperty.all(TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.yellow[700]))),
        child: NavigationBar(
            backgroundColor: Colors.grey[300],
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            height: 60,
            selectedIndex: tabselected,
            animationDuration: Duration(seconds: 2),
            onDestinationSelected: (index) {
              setState(() {
                tabselected = index;
              });
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',
                selectedIcon: Icon(Icons.home_outlined),
              ),
              NavigationDestination(
                icon: Icon(Icons.feedback),
                label: 'Feedback',
                selectedIcon: Icon(Icons.feedback_outlined),
              ),
              NavigationDestination(
                icon: Icon(Icons.notifications),
                label: 'Notification',
                selectedIcon: Icon(Icons.notifications_outlined),
              ),
            ]),
      ),
    );
  }
}
