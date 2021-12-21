import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kantra_test/utils/uicolors.dart';

class CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.white),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.blueGrey),
            child: Icon(
              CupertinoIcons.photo,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Text(
                  "UI/UX Design",
                  style: TextStyle(
                      color: UIColors.primary_black,
                      fontWeight: FontWeight.w800,
                      fontSize: 17),
                ),
                Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.deepOrange,
                      size: 14,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "4.8",
                      style: TextStyle(
                          color: UIColors.primary_black,
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 6),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.blueGrey[100],
                    child: Icon(
                      CupertinoIcons.person_fill,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Thorvalld Olavsen V.",
                      style: TextStyle(
                          color: UIColors.primary_black,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Google UI expert",
                      style: TextStyle(
                          color: UIColors.primary_black,
                          fontWeight: FontWeight.w300,
                          fontSize: 9),
                    ),
                  ],
                )
              ],
            ),
          ),
          /*Container(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print("free course!");
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 32),
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                      decoration: BoxDecoration(
                          color: UIColors.background_grey,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Center(
                        child: Text(
                          "free",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: UIColors.uicolor_3),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )*/
        ],
      ),
    );
  }
}
