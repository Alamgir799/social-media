import 'package:cannabitz_networking/ui/widgets/drawer_item.dart';
import 'package:flutter/material.dart';


import '../../../../const/app_strings.dart';

class LeftBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        width: 220,
        height: 400,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              leftBaritems(
                Icons.home_outlined,
                AppString.disCover,
                () {},
              ),
              leftBaritems(Icons.language_outlined, AppString.activity, () {},
                  comingSoon: AppString.comingSoon),
              leftBaritems(Icons.group_outlined, AppString.network, () {},
                  comingSoon: AppString.comingSoon),
              leftBaritems(Icons.mail_outlined, AppString.messages, () {},
                  comingSoon: AppString.comingSoon),
              leftBaritems(Icons.store_outlined, AppString.marketplace, () {},
                  comingSoon: AppString.comingSoon),
              leftBaritems(Icons.school_outlined, AppString.academy, () {},
                  comingSoon: AppString.comingSoon),
              leftBaritems(
                Icons.tune_outlined,
                AppString.settings,
                () {},
              ),
              Divider(),
              ListTile(
                dense: true,
                leading: Icon(
                  Icons.logout_outlined,
                  size: 16,
                  color: Colors.redAccent,
                ),
                title: Text(
                  AppString.logout,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.redAccent),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
