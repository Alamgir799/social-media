import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../responsive/responsive.dart';
import 'component/profile_component.dart';

class ProfileStepThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: ProfileStepThreeView(),
        desktop: Center(
          child: Card(
            elevation: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              width: ScreenUtil().screenWidth / 2.5,
              child: ProfileStepThreeView(),
            ),
          ),
        ),
      ),
    );
  }
}
