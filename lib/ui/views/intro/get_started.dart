import 'package:cannabitz_networking/const/app_strings.dart';
import 'package:cannabitz_networking/ui/route/route.dart';
import 'package:cannabitz_networking/ui/styles/styles.dart';
import 'package:cannabitz_networking/ui/widgets/app_buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40.w,
          ),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  "assets/images/cannabitz.png",
                  width: kIsWeb
                      ? ScreenUtil().screenWidth / 2
                      : ScreenUtil().screenWidth,
                ),
              ),
              fullWidthButton(
                AppString.getStarted,
                () => kIsWeb ? Get.toNamed(signIn) : Get.toNamed(onboarding),
              ),
              AppStyles.verticalSizedBoxTwenty,
            ],
          ),
        ),
      ),
    );
  }
}
