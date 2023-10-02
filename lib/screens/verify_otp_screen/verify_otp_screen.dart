import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/global_widget/custom_btn.dart';
import 'package:mloflow/global_widget/custom_suffix_icon.dart';
import 'package:mloflow/models/verify_user_otp_model.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);
  static String routeName = "SignInScreen";
  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final otpController = TextEditingController();
  bool _isLoading = false;
  final List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
  ];

  //Verifying calling the api
  Future<bool> _verifyUser(VerifyUserOtp user) async {
    setState(() {
      _isLoading = true; // Set _isLoading to true within a setState
    });

    final Uri uri = Uri.parse('http://127.0.0.1:8000/authapp/verify-otp/');
    final response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json'},
      body: json.encode(user.toJson()),
    );

    if (response.statusCode == 200) {
      // Registration was successful, handle the response accordingly.
      setState(() {
        _isLoading = false; // Set _isLoading to false within a setState
      });

      if (kDebugMode) {
        print('Registration successful!');
      }
      return true;
    } else {
      // Registration failed, handle the error.
      setState(() {
        _isLoading = false; // Set _isloading to false within a setState
      });

      if (kDebugMode) {
        print('Registration failed: ${response.body}');
      }
      return false;
    }
  }

  @override
  void initState() {
    for (var node in _focusNodes) {
      node.addListener(() {
        setState(() {});
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.only(left: 4.w, right: 4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.all(1.w),
                child: Image.asset("assets/icons/logo.png"),
              ),
              Text('Activate Your Account',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium),
              kSizedBox1,
              Text('Verify your account',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall),
              kSizedBox2,
              kSizedBox2,
              Form(
                key: _formKey,
                child: Column(children: [
                  buildEmailField(),
                  kSizedBox2,
                  buildOtpField(),
                  kSizedBox2,
                  kSizedBox2,
                  kSizedBox2,
                  CustomBtn(
                    onPress: () async {
                      if (_formKey.currentState!.validate()) {
                        final user = VerifyUserOtp(
                          emailController.text,
                          int.parse(otpController.text),
                        );

                        // Call _registerUser and await its completion
                        final registrationResult = await _verifyUser(user);

                        if (registrationResult == true) {
                          Navigator.pushNamed(context, '/home');
                        } else {
                          // Registration failed, handle it (e.g., show an error message)
                        }
                      }
                    },
                    title: _isLoading ? "Loading..." : "Activate",
                  ),
                  kSizedBox2,
                  kSizedBox2,
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      focusNode: _focusNodes[0],
      controller: emailController,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Email",
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/email.svg',
          iconColor:
              _focusNodes[0].hasFocus ? kPrimaryColor : kTextSecondaryColor,
        ),
      ),
    );
  }

  TextFormField buildOtpField() {
    return TextFormField(
      controller: otpController,
      focusNode: _focusNodes[1],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.number,
      style: inputTextHintStyle,
      decoration: const InputDecoration(
        labelText: "otp",
      ),
    );
  }
}
