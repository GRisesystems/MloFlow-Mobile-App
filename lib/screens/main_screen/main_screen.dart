import 'package:flutter/material.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/fetch_data.dart';
import 'package:mloflow/screens/dashboard/vendor_dashboard_screen.dart';
import 'package:mloflow/screens/produce_screen/produce_screen.dart';
import 'package:mloflow/screens/profile_screen/profile_screen.dart';
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
      resizeToAvoidBottomInset: true,
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
                  title: "Produce",
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
                  title: "Vendor",
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
      body: PageView(
        controller: myPage,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          KindaCodeDemo(),
          ProduceScreen(),
          VendorDashboardScreen(),
          MyProfileScreen(),
        ],
      ),
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
