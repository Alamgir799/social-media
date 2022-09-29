import 'package:cannabitz_networking/const/app_strings.dart';
import 'package:cannabitz_networking/ui/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget recentItem() {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/afran.jpeg"),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(AppString.melanyGrusman,
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                  )),
              Text(
                AppString.bangkokThailand,
                style: TextStyle(
                  fontSize: 6,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
            Text(
              AppString.hour2,
              style: TextStyle(
                fontSize: 5,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        AppStyles.verticalSizedBoxTen,
        Text(
          AppString.descriptionForWeb,
          maxLines: 3,
          overflow: TextOverflow.clip,
          style: TextStyle(
            fontSize: 6,
          ),
        ),
      ],
    ),
  );
}
