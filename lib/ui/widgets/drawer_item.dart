import 'package:cannabitz_networking/ui/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget drawerItemMobile(icon, title, onTap, {comingSoon = "", color}) {
  return ListTile(
    dense: true,
    leading: Icon(
      icon,
      size: 24.w,
      color: Colors.black,
    ),
    title: Row(
      children: [
        Text(
          title,
          style: AppStyles.headingFour,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          comingSoon,
          style: TextStyle(
            fontSize: 10.sp,
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

Widget leftBaritems(icon, title, onTap, {comingSoon = "", color}) {
  return ListTile(
    dense: true,
    horizontalTitleGap: 0,
    leading: Icon(
      icon,
      size: 16,
      color: Colors.black,
    ),
    title: Row(
      children: [
        Text(
          title,
          style: AppStyles.headingFour,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          comingSoon,
          style: TextStyle(
            fontSize: 8,
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
