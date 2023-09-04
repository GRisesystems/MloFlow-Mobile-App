import 'package:flutter/material.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/global_widget/custom_btn.dart';
import 'package:mloflow/global_widget/custom_suffix_icon.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = "SignInScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  final List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
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
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: Align(
              alignment: Alignment.center,
              child: ListView(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(1.w),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Text('Welcome',
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
                      // SizedBox(height: 35, width: 300, child: buildFirstNameField()),
                      buildFirstNameField(),
                      kSizedBox2,
                      buildLastNameField(),
                      kSizedBox2,
                      buildPhoneNumberField(),
                      kSizedBox2,
                      buildHomeAddress(),
                      kSizedBox2,
                      buildEmailField(),
                      kSizedBox2,
                      buildPasswordField(),
                      kSizedBox2,
                      buildRetypePasswordField(),
                      kSizedBox2,
                      kSizedBox2,
                      CustomBtn(
                          onPress: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                          title: "Sign Up"),
                      kSizedBox2,
                      kSizedBox2,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Have an account?",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 12.sp,
                                ),
                          ),
                          InkWell(
                            onTap: () {
                              //go to SignUp Screen
                              Navigator.pushNamed(context, '/sign_in');
                            },
                            child: Text(
                              "Sign In Here",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                          )
                        ],
                      ),
                      kSizedBox2,
                      kSizedBox2,
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildFirstNameField() {
    return TextFormField(
      focusNode: _focusNodes[0],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.name,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "First Name",
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/person.svg',
          iconColor:
              _focusNodes[0].hasFocus ? kPrimaryColor : kTextSecondaryColor,
        ),
      ),
      validator: (value) {
        if (value!.length < 4) {
          return "Must be more than 4 characters";
        }
        return null;
      },
    );
  }

  TextFormField buildLastNameField() {
    return TextFormField(
      focusNode: _focusNodes[1],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.name,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Last Name",
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/person.svg',
          iconColor:
              _focusNodes[1].hasFocus ? kPrimaryColor : kTextSecondaryColor,
        ),
      ),
      validator: (value) {
        if (value!.length < 4) {
          return "Must be more than 4 characters";
        }
        return null;
      },
    );
  }

  TextFormField buildPhoneNumberField() {
    return TextFormField(
      focusNode: _focusNodes[2],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.phone,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Phone Number",
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/phone.svg',
          iconColor:
              _focusNodes[2].hasFocus ? kPrimaryColor : kTextSecondaryColor,
        ),
      ),
      validator: (value) {
        if (value!.length < 4) {
          return "Must be more than 4 characters";
        }
        return null;
      },
    );
  }

  TextFormField buildHomeAddress() {
    return TextFormField(
      focusNode: _focusNodes[3],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.phone,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Home Address",
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/home.svg',
          iconColor:
              _focusNodes[3].hasFocus ? kPrimaryColor : kTextSecondaryColor,
        ),
      ),
      validator: (value) {
        if (value!.length < 4) {
          return "Must be more than 4 characters";
        }
        return null;
      },
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      focusNode: _focusNodes[4],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Email",
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/email.svg',
          iconColor:
              _focusNodes[4].hasFocus ? kPrimaryColor : kTextSecondaryColor,
        ),
      ),
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      focusNode: _focusNodes[5],
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
                _focusNodes[5].hasFocus ? kPrimaryColor : kTextSecondaryColor,
          ),
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return "Must be more than 5 characters";
        }
        return null;
      },
    );
  }

  TextFormField buildRetypePasswordField() {
    return TextFormField(
      focusNode: _focusNodes[6],
      obscureText: true,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Retype Password",
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/lock.svg',
          iconColor:
              _focusNodes[6].hasFocus ? kPrimaryColor : kTextSecondaryColor,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return "Must be more than 5 characters";
        }
        return null;
      },
    );
  }
}
