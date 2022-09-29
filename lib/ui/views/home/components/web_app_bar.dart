import 'package:flutter/material.dart';


class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/images/cannabitz.png",
                height: 70,
                width: 120,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              height: 45,
              width: 280,
              child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  fillColor: Color(0xffEFF1F3),
                  contentPadding: EdgeInsets.only(left: 15, top: 10),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                  prefixIcon: Container(
                    // padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.search,
                      size: 17,
                    ),
                    width: 10,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications_none_outlined,
                    size: 17,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage(
                      "assets/images/afran.jpeg",
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Robert Jhonson",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
