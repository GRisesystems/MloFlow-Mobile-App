import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

const Color kScaffoldColor = Color(0xFFFFFFFF);
const Color kPrimaryColor = Color(0xFFFBB31D);
const Color kSecondaryColor = Color(0xFFFBC24A);
const Color kTextPrimaryColor = Color(0xFF3E5481);
const Color kTextSecondaryColor = Color(0xFF9FA5C0);
const Color kTextWhiteColor = Color(0xFFFDFEFE);
const Color kTextBlackColor = Color(0xFF0C0B0B);
const Color kErrorBorderColor = Color(0xFFF94C66);
const Color kFillColor = Color(0xFFF4F5f7);
const Color kIconColor = Color(0xFF3E5481);

final kSizedBox1 =  SizedBox(
  height: 1.h,
);

final kSizedBox2 =  SizedBox(
  height: 2.h,
);

final inputTextHintStyle = GoogleFonts.lato().copyWith(
  fontSize: SizerUtil.deviceType == DeviceType.tablet ? 15.sp : 11.sp,
  letterSpacing: 1.0,
  color: kTextSecondaryColor,
);