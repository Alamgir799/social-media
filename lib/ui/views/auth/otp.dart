import 'package:cannabitz_networking/ui/responsive/responsive.dart';
import 'package:cannabitz_networking/ui/views/auth/components/auth_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Otp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: OtpView(),
        desktop: Center(
          child: Card(
            elevation: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              width: ScreenUtil().screenWidth / 2.5,
              child: OtpView(),
            ),
          ),
        ),
      ),
    );
  }
}
