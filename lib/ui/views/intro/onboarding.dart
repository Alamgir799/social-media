import 'package:cannabitz_networking/const/app_strings.dart';
import 'package:cannabitz_networking/ui/route/route.dart';
import 'package:cannabitz_networking/ui/styles/styles.dart';
import 'package:cannabitz_networking/ui/widgets/app_buttons.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {

  List<String> _imagefiles = AppString.images;
  List<String> _title = AppString.title;
  RxInt _currentIndex = 0.obs;
  
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

              Obx(() => Expanded(
                  flex: 3,
                  child: Image.asset(
                    _imagefiles[_currentIndex.toInt()],
                    fit: BoxFit.contain,
                  ))),
              Obx(
                () => DotsIndicator(
                  dotsCount: _imagefiles.length,
                  position: _currentIndex.toDouble(),
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              AppStyles.verticalSizedBoxTwenty,
              Obx(
                () => Text(
                  _title[_currentIndex.toInt()],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              AppStyles.verticalSizedBoxTwenty,
              fullWidthButton(AppString.next, () {
                if (_currentIndex == _title.length - 1) {
                  Get.toNamed(signIn);
                } else {
                  _currentIndex + 1;
                }
              }),
              AppStyles.verticalSizedBoxTwenty,

            ],
          ),
        ),
      ),
    );
  }
}
