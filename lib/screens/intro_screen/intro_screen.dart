import 'package:flutter/material.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/screens/sign_in_screen/sign_in_screen.dart';
import 'package:sizer/sizer.dart';
import 'components/intro_components.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);
  static String routeName = "IntroScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomStack(),
          kSizedBox1,
          Text(
            "Welcome to MloFlow!",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          kSizedBox2,
          Text(
            "Kenya's\n Exclusive One-Stop Shop\n For All Things Food!",
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          kSizedBox2,
          kSizedBox2,
          IntroBtn(onPress: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/sign_in', (Route<dynamic> route) => false);

            // Navigator.pushNamed(context, '/sign_in');
          }),
          kSizedBox2,
          kSizedBox2,
        ],
      ),
    );
  }
}