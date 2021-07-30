import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'custom_Themes.dart';
import '';

class TitleText {
  titleText(String titleText) {
    return Text(
      titleText,
      style: TextStyle(
          color: TITLE_COLOR[THEME_TYPE],
          fontSize: 30,
          fontWeight: FontWeight.bold),
    );
  }
}
