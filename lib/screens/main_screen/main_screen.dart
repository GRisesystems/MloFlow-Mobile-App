import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/screens/Widgets/AppBarWidget.dart';
import 'package:mloflow/screens/Widgets/button.dart';
import 'package:mloflow/screens/pages/profile_screen.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageController myPage = PageController(initialPage: _selectedIndex);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: true,
      //appBar: AppBar(),
      body: ListView(
        children: [
          //Custom App Bar Widgt
          AppBarWidget(),

          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 251, 179, 29),
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.all(25),
              child: Row(children: [
                Column(
                  children: [
                    //promo message
                    Text('Get 10% Offer',
                        style: GoogleFonts.dmSerifDisplay(
                            fontSize: 20, color: Colors.white)),
                    //redeem button
                    const SizedBox(height: 20),
                    MyButton(text: 'Redeem', onTap: () {})
                  ],
                ),
                const SizedBox(width: 20),
                //image
                Image.asset('assets/images/takeout-bag.png', height: 100),
              ]),
            ),
          ),
          const SizedBox(height: 25),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("Categories",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontSize: 18)),
          )
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: 100.w,
          height: SizerUtil.deviceType == DeviceType.tablet ? 11.h : 8.h,
          margin: EdgeInsets.only(left: 3.w, right: 3.w),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBottomBar(
                  onPress: () {
                    setState(() {
                      _selectedIndex = 0;
                      myPage.jumpToPage(_selectedIndex);
                    });
                  },
                  title: "Home",
                  iconColor:
                      _selectedIndex == 0 ? kPrimaryColor : kTextSecondaryColor,
                  textColor:
                      _selectedIndex == 0 ? kPrimaryColor : kTextSecondaryColor,
                  iconData: Icons.home_filled),
              CustomBottomBar(
                  onPress: () {
                    setState(() {
                      _selectedIndex = 1;
                      myPage.jumpToPage(_selectedIndex);
                    });
                  },
                  title: "Cart",
                  iconColor:
                      _selectedIndex == 1 ? kPrimaryColor : kTextSecondaryColor,
                  textColor:
                      _selectedIndex == 1 ? kPrimaryColor : kTextSecondaryColor,
                  iconData: Icons.shopping_cart),
              CustomBottomBar(
                  onPress: () {
                    setState(() {
                      _selectedIndex = 2;
                      myPage.jumpToPage(_selectedIndex);
                    });
                  },
                  title: "Notifications",
                  iconColor:
                      _selectedIndex == 2 ? kPrimaryColor : kTextSecondaryColor,
                  textColor:
                      _selectedIndex == 2 ? kPrimaryColor : kTextSecondaryColor,
                  iconData: Icons.notifications),
              CustomBottomBar(
                  onPress: () {
                    setState(() {
                      _selectedIndex = 3;
                      myPage.jumpToPage(_selectedIndex);
                    });
                  },
                  title: "Profile",
                  iconColor:
                      _selectedIndex == 3 ? kPrimaryColor : kTextSecondaryColor,
                  textColor:
                      _selectedIndex == 3 ? kPrimaryColor : kTextSecondaryColor,
                  iconData: Icons.person),
            ],
          ),
        ),
      ),
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

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar(
      {Key? key,
      required this.onPress,
      required this.title,
      required this.iconColor,
      required this.textColor,
      required this.iconData})
      : super(key: key);
  final VoidCallback onPress;
  final String title;
  final Color iconColor;
  final Color textColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: iconColor,
            ),
            kSizedBox1,
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: textColor, fontSize: 10.sp),
            )
          ],
        ));
  }
}
