import 'package:cannabitz_networking/const/app_colors.dart';
import 'package:cannabitz_networking/ui/responsive/size_config.dart';
import 'package:cannabitz_networking/ui/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget fullWidthButton(
  String title,
  onPressed,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
    ),
    child: Material(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      color: AppColors.keppelColor,
      child: InkWell(
        onTap: onPressed,
        splashColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig.screenWidth!<600?8.h:8,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: SizeConfig.screenWidth!<600? 15.sp : 13),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget authButtonMobile(
  String assetRef,
  String title,
  onPressed,
) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        border: Border.all(
          color: AppColors.keppelColor,
        )),
    child: Material(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      color: Colors.white,
      child: InkWell(
        onTap: onPressed,
        splashColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                assetRef,
                width: 18.w,
                height: 15.h,
                fit: BoxFit.contain,
              ),
              AppStyles.horizontalSizedBoxTen,
              Text(
                title,
                style: AppStyles.headingTwo,
              )
            ],
          ),
        ),
      ),
    ),
  );
}
