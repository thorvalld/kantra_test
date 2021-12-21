import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kantra_test/components/start_button.dart';
import 'package:kantra_test/pages/onboarding/onboarding.dart';
import 'package:kantra_test/utils/uicolors.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      body: SafeArea(child: WelcomeBody()),
    );
  }
}

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                width: 120,
                height: 90,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 42,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: "Improve ",
                      style: TextStyle(
                          fontFamily: "Netflix",
                          color: UIColors.primary_black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                    TextSpan(
                        text: "your skills\n",
                        style: TextStyle(
                            color: UIColors.primary_red,
                            fontSize: 24,
                            fontFamily: "Netflix",
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: "on your own to prepare\nfor a ",
                      style: TextStyle(
                          fontFamily: "Netflix",
                          color: UIColors.primary_black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text: "better future",
                        style: TextStyle(
                            color: UIColors.primary_red,
                            fontSize: 24,
                            fontFamily: "Netflix",
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ".",
                        style: TextStyle(
                            color: UIColors.primary_black,
                            fontSize: 24,
                            fontFamily: "Netflix",
                            fontWeight: FontWeight.bold)),
                  ])),
            ],
          ),
        ),
        /*SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "The Bridge, allows any student, staff or professional to acquire relevant online training to embark on the future employment opportunity with guaranteed follow-up.",
                  style: TextStyle(
                      color: UIColors.primary_grey,
                      fontSize: 14,
                      fontFamily: "Netflix",
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),*/
        SizedBox(
          height: 64,
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              StartButton("GET STARTED", () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => OnBoardingPage()));
              })
            ],
          ),
        ),
        Spacer(),
        Image.asset(
          "assets/cover.png",
          height: 300,
          width: 300,
        )
      ],
    );
  }
}
