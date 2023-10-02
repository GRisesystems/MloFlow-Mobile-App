import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import "package:mloflow/constant.dart";
<<<<<<< HEAD
import "package:mloflow/screens/Widgets/bottomBarWidget.dart";
import "package:mloflow/screens/intro_screen/intro_screen.dart";
import "package:mloflow/screens/main_screen/main_screen.dart";
import "package:mloflow/screens/pages/profile_screen.dart";
=======
import "package:mloflow/screens/cart_screen/cart_screen.dart";
import "package:mloflow/screens/dashboard/vendor_dashboard_screen.dart";
import "package:mloflow/screens/intro_screen/intro_screen.dart";
import "package:mloflow/screens/main_screen/main_screen.dart";
import "package:mloflow/screens/produce_screen/add_product.dart";
import "package:mloflow/screens/profile_screen/profile_screen.dart";
>>>>>>> master
import "package:mloflow/screens/sign_in_screen/sign_in_screen.dart";
import "package:mloflow/screens/sign_up_screen/sign_up_screen.dart";
import "package:mloflow/screens/verify_otp_screen/verify_otp_screen.dart";
import "package:sizer/sizer.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Mlo Flow",
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kScaffoldColor,
          textTheme: GoogleFonts.latoTextTheme().copyWith(
            headlineSmall: TextStyle(
              fontWeight: FontWeight.w700,
              color: kTextPrimaryColor,
              fontSize: 18.sp,
            ),
            headlineMedium: TextStyle(
              fontWeight: FontWeight.w800,
              color: kTextPrimaryColor,
              fontSize:
                  SizerUtil.deviceType == DeviceType.tablet ? 18.sp : 20.sp,
            ),
            titleSmall: TextStyle(
              fontWeight: FontWeight.w300,
              color: kTextSecondaryColor,
              fontSize: 13.sp,
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.w300,
              color: kTextSecondaryColor,
              fontSize:
                  SizerUtil.deviceType == DeviceType.tablet ? 15.sp : 18.sp,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
              floatingLabelStyle: const TextStyle(color: kPrimaryColor),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              hintStyle: inputTextHintStyle,
              labelStyle: inputTextHintStyle.copyWith(
                color: kTextSecondaryColor,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: kSecondaryColor,
                    style: BorderStyle.solid,
                  )),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: kTextSecondaryColor.withOpacity(0.6),
                  style: BorderStyle.solid,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: kPrimaryColor,
                  style: BorderStyle.solid,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: kErrorBorderColor,
                  style: BorderStyle.solid,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: kErrorBorderColor,
                  style: BorderStyle.solid,
                ),
              )),
          bottomAppBarTheme: const BottomAppBarTheme(
            shape: CircularNotchedRectangle(),
          ),
        ),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => const IntroScreen(),
          '/sign_in': (context) => const SignInScreen(),
          '/sign_up': (context) => const SignUpScreen(),
          '/home': (context) => const MainScreen(),
          '/profile': (context) => const MyProfileScreen(),
          '/verify-otp': (context) => const VerifyOtpScreen(),
          '/cart': (context) => const CartScreen(),
          '/vendor': (context) => const VendorDashboardScreen(),
          '/add_product': (context) => const AddProductScreen(),
        },
      );
    });
  }
}
