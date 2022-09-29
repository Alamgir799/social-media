import 'package:cannabitz_networking/const/app_colors.dart';
import 'package:cannabitz_networking/ui/responsive/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customFormField(
  keyboardtype,
  controller,
  context,
  hinttext,
  validator, {
  bool obscureText = false,
  suffixIcon,
  prefixWidget,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.h),
    child: Container(
      height: SizeConfig.screenWidth! < 600 ? 45.h : 45,
      child: TextFormField(
        keyboardType: keyboardtype,
        style: TextStyle(
            fontSize: SizeConfig.screenWidth! < 600 ? 12.sp : 12,
            fontWeight: FontWeight.w400),
        controller: controller,
        obscureText: obscureText,
        textInputAction: TextInputAction.next,
        validator: validator,
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 15.w),
          suffixIcon: suffixIcon,
          prefix: prefixWidget,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.keppelColor),
            borderRadius: BorderRadius.circular(10.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
            borderRadius: BorderRadius.circular(10.r),
          ),
          hintText: hinttext,
          hintStyle: TextStyle(
              fontSize: SizeConfig.screenWidth! < 600 ? 12.sp : 12,
              fontWeight: FontWeight.w400),
          errorStyle: TextStyle(
            fontSize: SizeConfig.screenWidth! < 600 ? 12.sp : 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}
