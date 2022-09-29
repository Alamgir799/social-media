import 'package:cannabitz_networking/const/app_strings.dart';
import 'package:cannabitz_networking/ui/styles/styles.dart';
import 'package:cannabitz_networking/ui/widgets/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              AppString.menu,
              style: AppStyles.headingFour,
            ),
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20.w,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25.r,
              backgroundImage: AssetImage("assets/images/afran.jpeg"),
            ),
            title: Text(
              AppString.russell,
              style: AppStyles.headingFour,
            ),
            subtitle: Text(
              AppString.madagascar,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(
              Icons.draw_outlined,
              size: 20.w,
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          drawerItemMobile(
            Icons.home_outlined,
            AppString.disCover,
            () {},
          ),
          drawerItemMobile(Icons.language_outlined, AppString.activity, () {},
              comingSoon: AppString.comingSoon),
          drawerItemMobile(Icons.group_outlined, AppString.network, () {},
              comingSoon: AppString.comingSoon),
          drawerItemMobile(Icons.mail_outlined, AppString.messages, () {},
              comingSoon: AppString.comingSoon),
          drawerItemMobile(Icons.store_outlined, AppString.marketplace, () {},
              comingSoon: AppString.comingSoon),
          drawerItemMobile(Icons.school_outlined, AppString.academy, () {},
              comingSoon: AppString.comingSoon),
          Divider(),
          drawerItemMobile(
            Icons.tune_outlined,
            AppString.settings,
            () {},
          ),
          ListTile(
            dense: true,
            leading: Icon(
              Icons.logout_outlined,
              size: 24.w,
              color: Colors.redAccent,
            ),
            title: Text(
              AppString.logout,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.redAccent),
            ),
            onTap: () {},
          )
        
        ],
      ),
    );
  }
}
