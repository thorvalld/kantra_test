import 'package:flutter/material.dart';
import 'package:kantra_test/utils/uicolors.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.btnText, this.onTapped);
  final String btnText;
  final Function onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapped();
      },
      child: Container(
        height: 42,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                UIColors.primary_red,
                Colors.red,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(26.0),
            ),
            boxShadow: [
              BoxShadow(
                color: UIColors.primary_red.withOpacity(0.4),
                spreadRadius: 6,
                blurRadius: 23,
                offset: Offset(0, 3),
              )
            ]),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                btnText,
                style: TextStyle(
                  fontFamily: "Netflix",
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
