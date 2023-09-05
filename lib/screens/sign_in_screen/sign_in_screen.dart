import 'package:flutter/material.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/global_widget/custom_btn.dart';
import 'package:mloflow/global_widget/custom_suffix_icon.dart';
import 'package:mloflow/screens/sign_up_screen/sign_up_screen.dart';
import 'package:sizer/sizer.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = "SignInScreen";
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
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

  @override
  void initState() {
    // TODO: implement initState
    for (var node in _focusNodes) {
      node.addListener(() {
        setState(() {});
      });
    }
    super.initState();
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
                      onPress: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      title: "Sign In"),
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
