import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kantra_test/pages/home.dart';
import 'package:kantra_test/utils/uicolors.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  void _onIntroEnd(context) {
    Navigator.of(context).push(CupertinoPageRoute(builder: (_) => Home()));
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset(
      "assets/$assetName",
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontFamily: "Netflix",
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: UIColors.primary_black),
      bodyTextStyle: TextStyle(
          fontSize: 18,
          color: UIColors.primary_grey,
          fontFamily: "Netflix",
          fontWeight: FontWeight.w300),
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
            title: "Explore courses",
            body:
                "Learn the most in-demand skills for the jobs of today and tomorrow.\nA next generation school, 100% online.",
            image: _buildImage('course.png'),
            decoration: pageDecoration),
        PageViewModel(
            title: "Career paths",
            body:
                "Looking to make a career change?\nExplore new career opportunities in fields like IT, Data Sciences, graphic design or marketing...",
            image: _buildImage('path.png'),
            decoration: pageDecoration),
        PageViewModel(
            title: "Coaching & follow-up",
            body: "Get greater support from a professional coach.",
            image: _buildImage('coach.png'),
            decoration: pageDecoration),
        PageViewModel(
            title: "Discover Events",
            body: "Join events that will boost your opportunities.",
            image: _buildImage('event.png'),
            decoration: pageDecoration),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text(
        "SKIP",
        style: TextStyle(fontFamily: "Netflix", color: UIColors.primary_black),
      ),
      next: const Icon(CupertinoIcons.arrow_right, color: UIColors.primary_red),
      done: const Text("DONE",
          style: TextStyle(
              fontFamily: "Netflix",
              fontWeight: FontWeight.w600,
              color: UIColors.primary_red)),
      curve: Curves.fastLinearToSlowEaseIn,
      dotsDecorator: const DotsDecorator(
        activeColor: UIColors.primary_red,
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      /*dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),*/
    );
  }
}
