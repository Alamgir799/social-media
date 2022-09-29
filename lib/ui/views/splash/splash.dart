import 'dart:async';
import 'package:cannabitz_networking/ui/responsive/size_config.dart';
import 'package:cannabitz_networking/ui/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 4),
      () async => Get.toNamed(getStarted),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //get device height width
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/logo/logo.png",
          width: 200.w,
        ),
      ),
    );
  }
}
