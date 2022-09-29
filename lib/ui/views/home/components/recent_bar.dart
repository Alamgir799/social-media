import 'package:cannabitz_networking/ui/widgets/recent_items.dart';
import 'package:flutter/material.dart';


class RecentBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        width: 200,
        height: 400,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 15,
          ),
          child: Column(
            children: [
             recentItem(),
             recentItem(),
             recentItem()
            ],
          ),
        ),
      ),
    );
  }
}
