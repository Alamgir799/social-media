import 'package:cannabitz_networking/const/app_colors.dart';
import 'package:cannabitz_networking/const/app_strings.dart';
import 'package:cannabitz_networking/ui/views/home/components/mobile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomNav extends StatelessWidget {
  RxInt _currentIndex = 0.obs;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _pages = [
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
          icon: Icon(Icons.segment_outlined),
        ),
        title: Text(AppString.disCover),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined),
          )
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedFontSize: 20.sp,
          selectedItemColor: AppColors.keppelColor,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontSize: 0),
          unselectedLabelStyle: TextStyle(fontSize: 0),
          currentIndex: _currentIndex.value,
          onTap: (int index) {
            _currentIndex.value = index;
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),
          ],
        ),
      ),
      body: Obx(() => _pages[_currentIndex.value]),
      drawer: MobileDrawer(),
    );
  }
}
