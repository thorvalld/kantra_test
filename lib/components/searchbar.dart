import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kantra_test/utils/uicolors.dart';

class KSearchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchInputController = new TextEditingController();
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          left: 12,
        ),
        height: 50,
        decoration: BoxDecoration(
            color: Colors.red[900], borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _searchInputController,
                cursorColor: UIColors.background_grey,
                decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: UIColors.background_grey),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
