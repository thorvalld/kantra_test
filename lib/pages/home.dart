import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kantra_test/components/course_card.dart';
import 'package:kantra_test/components/searchbar.dart';
import 'package:kantra_test/utils/uicolors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: UIColors.primary_red,
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text("What courses are you looking for?",
                                style: TextStyle(
                                    fontFamily: "Netflix",
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                      child: Row(
                        children: [KSearchbar()],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: Colors.red[50]),
                            width: 110,
                            height: 130,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  CupertinoIcons.pencil_outline,
                                  color: UIColors.primary_black,
                                  size: 36,
                                ),
                                Text("Design",
                                    style: TextStyle(
                                        fontFamily: "Netflix",
                                        color: UIColors.primary_black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: Colors.red[50]),
                            width: 110,
                            height: 130,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  CupertinoIcons.command,
                                  color: UIColors.primary_black,
                                  size: 36,
                                ),
                                Text("Coding",
                                    style: TextStyle(
                                        fontFamily: "Netflix",
                                        color: UIColors.primary_black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: Colors.red[50]),
                            width: 110,
                            height: 130,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  CupertinoIcons.creditcard,
                                  color: UIColors.primary_black,
                                  size: 36,
                                ),
                                Text("Business",
                                    style: TextStyle(
                                        fontFamily: "Netflix",
                                        color: UIColors.primary_black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 18, bottom: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.chart_bar_fill,
                        color: UIColors.primary_black,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Trending courses",
                          style: TextStyle(
                              fontFamily: "Netflix",
                              color: UIColors.primary_black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(22)),
                            color: UIColors.light_red.withOpacity(.4)),
                        child: Text("see all",
                            style: TextStyle(
                                fontFamily: "Netflix",
                                color: UIColors.primary_red,
                                fontSize: 12,
                                fontWeight: FontWeight.w300)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 282,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CourseCard(),
                        SizedBox(
                          width: 14,
                        ),
                        CourseCard(),
                        SizedBox(
                          width: 14,
                        ),
                        CourseCard(),
                        SizedBox(
                          width: 14,
                        ),
                        CourseCard(),
                        SizedBox(
                          width: 14,
                        ),
                        CourseCard(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
