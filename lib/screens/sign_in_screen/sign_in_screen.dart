import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/global_widget/custom_btn.dart';
import 'package:mloflow/global_widget/custom_suffix_icon.dart';
import 'package:mloflow/models/user_login_model.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = "SignInScreen";
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscureText = true;
  bool _isLoading = false;
  final List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
  ];

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  //Login calling th api
  Future<bool> _loginUser(UserLogin user) async {
    setState(() {
      _isLoading = true; // Set _isLoading to true within a setState
    });

    final Uri uri =
        Uri.parse('https://mloflo3.pythonanywhere.com/authapp/login/');
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
    passwordController.dispose();
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
              Text('Welcome Back',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium),
              kSizedBox1,
              Text('Please enter your account here',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall),
              kSizedBox2,
              kSizedBox2,
              Form(
                key: _formKey,
                child: Column(children: [
                  buildEmailField(),
                  kSizedBox2,
                  buildPasswordField(),
                  kSizedBox2,
                  InkWell(
                    onTap: () {
                      //Forgot password
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("Forgot Password",
                          textAlign: TextAlign.end,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: kPrimaryColor)),
                    ),
                  ),
                  kSizedBox2,
                  kSizedBox2,
                  CustomBtn(
                    onPress: () async {
                      if (_formKey.currentState!.validate()) {
                        final user = UserLogin(
                          emailController.text,
                          passwordController.text,
                        );

                        // Call _registerUser and await its completion
                        final registrationResult = await _loginUser(user);

                        if (registrationResult == true) {
                          // Registration was successful, navigate to the home screen
                          //Navigator.pushNamed(context, '/home');
                        } else {
                          // Registration failed, handle it (e.g., show an error message)
                        }
                      }
                    },
                    title: _isLoading ? "Loading..." : "Sign in",
                  ),
                  kSizedBox2,
                  kSizedBox2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Don't have account?",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 12.sp,
                            ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, SignUpScreen.routeName);
                          Navigator.pushNamed(context, '/sign_up');
                        },
                        child: Text(
                          "Sign Up Here",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      )
                    ],
                  )
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

  TextFormField buildPasswordField() {
    return TextFormField(
      controller: passwordController,
      focusNode: _focusNodes[1],
      obscureText: _obscureText,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Password",
        suffixIcon: InkWell(
          onTap: _toggle,
          child: CustomSuffixIcon(
            iconSrc: _obscureText
                ? 'assets/icons/visibility.svg'
                : 'assets/icons/novisibility.svg',
            iconColor:
                _focusNodes[1].hasFocus ? kPrimaryColor : kTextSecondaryColor,
          ),
        ),
      ),
    );
  }
}
