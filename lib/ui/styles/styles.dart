import 'package:cannabitz_networking/ui/responsive/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  Divider transparentDivider = Divider(
    color: Colors.transparent,
  );
  static SizedBox verticalSizedBoxThree = SizedBox(
    height: 6.h,
  );
  static SizedBox verticalSizedBoxTen = SizedBox(
    height: 10.h,
  );

  static SizedBox verticalSizedBoxTwenty = SizedBox(
    height: 20.h,
  );
  static SizedBox verticalSizedBoxThirty = SizedBox(
    height: 30.h,
  );
  static SizedBox verticalSizedBoxFourty = SizedBox(
    height: 40.h,
  );
  static SizedBox horizontalSizedBoxTen = SizedBox(
    width: 10.h,
  );
  static SizedBox horizontalSizedBoxTwenty = SizedBox(
    width: 20.h,
  );

  static TextStyle headingOne = TextStyle(
    fontSize: SizeConfig.screenWidth! < 600 ? 28.sp : 40,
    fontWeight: FontWeight.w700,
  );
  static TextStyle headingTwo = TextStyle(
    fontSize: SizeConfig.screenWidth! < 600 ? 15.sp : 15,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headingThree = TextStyle(
    fontSize: SizeConfig.screenWidth! < 600 ? 13.sp : 13,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headingFour = TextStyle(
    fontSize: SizeConfig.screenWidth! < 600 ? 20.sp : 13,
    fontWeight: FontWeight.w500,
  );
}
// SizeConfig.screenWidth!<600?