import 'package:cannabitz_networking/ui/responsive/responsive.dart';
import 'package:cannabitz_networking/ui/responsive/size_config.dart';
import 'package:cannabitz_networking/ui/views/home/components/bottom_nav_controller.dart';
import 'package:cannabitz_networking/ui/views/home/components/left_bar.dart';
import 'package:cannabitz_networking/ui/views/home/components/recent_bar.dart';
import 'package:cannabitz_networking/ui/views/home/components/web_app_bar.dart';
import 'package:flutter/material.dart';

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: BottomNav(),
      desktop: Column(
        children: [
          WebAppBar(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LeftBar(),
                Expanded(
                  flex: 6,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                SizeConfig.screenWidth! < 800 ? SizedBox():RecentBar() ,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
