import 'package:flutter/material.dart';
import 'package:mloflow/constant.dart';
import 'package:sizer/sizer.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Stack(
        children: [
          CustomPositionWidget(
            top: 100,
            left: 201,
            width: 104,
            height: 104,
            rad1: 52,
            rad2: 52,
            rad3: 52,
            img: 'assets/images/welcomeFruit.jpg',
          ),
          CustomPositionWidget(
            top: 124,
            left: 47,
            width: 88,
            height: 88,
            rad1: 60,
            rad2: 60,
            rad3: 60,
            img: 'assets/images/food1.jpg',
          ),
          CustomPositionWidget(
            top: 203,
            left: 335,
            width: 72,
            height: 72,
            rad1: 44,
            rad2: 44,
            rad3: 44,
            img: 'assets/images/food2.jpg',
          ),
          CustomPositionWidget(
            top: 221,
            left: 107,
            width: 160,
            height: 160,
            rad1: 80,
            rad2: 80,
            rad3: 80,
            img: 'assets/images/food3.jpg',
          ),
          CustomPositionWidget(
            top: 267,
            left: -33,
            width: 104,
            height: 104,
            rad1: 50,
            rad2: 50,
            rad3: 50,
            img: 'assets/images/food4.jpg',
          ),
          CustomPositionWidget(
            top: 299,
            left: 289,
            width: 56,
            height: 56,
            rad1: 80,
            rad2: 80,
            rad3: 80,
            img: 'assets/images/food5.jpg',
          ),
          CustomPositionWidget(
            top: 402,
            left: 181,
            width: 88,
            height: 88,
            rad1: 80,
            rad2: 80,
            rad3: 80,
            img: 'assets/images/food6.jpg',
          ),
          CustomPositionWidget(
            top: 385,
            left: 48,
            width: 72,
            height: 72,
            rad1: 80,
            rad2: 80,
            rad3: 80,
            img: 'assets/images/food7.jpg',
          ),
        ],
      ),
    );
    ;
  }
}

class CustomPositionWidget extends StatelessWidget {
  const CustomPositionWidget(
      {Key? key,
        required this.top,
        required this.left,
        required this.width,
        required this.height,
        required this.rad1,
        required this.rad2,
        required this.rad3,
        required this.img})
      : super(key: key);
  final double top, left;
  final double width, height;
  final double rad1, rad2, rad3;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(1.w),
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(rad1)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(rad2),
          child: SizedBox.fromSize(
            size: Size.fromRadius(rad3),
            child: Image.asset(img, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class IntroBtn extends StatelessWidget {
  const IntroBtn({Key? key, required this.onPress}) : super(key: key);
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onPress,
      child: Container(
        width: 90.w,
        height: 7.h,
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            "Get Started",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
                color: kTextWhiteColor),
          ),
        ),
      ),
    );
    ;
  }
}


class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      padding: EdgeInsets.all(1.w),
      decoration: BoxDecoration(
          color: kSecondaryColor, borderRadius: BorderRadius.circular(60)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: SizedBox.fromSize(
          size: const Size.fromRadius(60),
          child: Image.asset("assets/icons/logo.png", fit: BoxFit.cover),
        ),
      ),
    );
  }
}
