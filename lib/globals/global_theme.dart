import 'package:flutter/material.dart';

class GlobalThemes {
  GlobalThemes._();

  static get appThemeData => _buildThemeData();

  static get blueThemeData => _buildThemeData(primary: Colors.blue);

  static const newsCardColor = [
    Colors.white10,
    Colors.white,
    Colors.white10,
  ];

  static _buildThemeData(
          {Color primary = Colors.purpleAccent,
          Color secondary = Colors.pinkAccent,
          Color body = Colors.white}) =>
      ThemeData(
        primarySwatch: primary,
        accentColor: secondary,
        toggleButtonsTheme: ToggleButtonsThemeData(
            color: body,
            textStyle: TextStyle(color: body),
            selectedColor: secondary),
        textTheme: TextTheme(
          display4: TextStyle(color: primary, fontWeight: FontWeight.bold),
          display3: TextStyle(color: primary, fontWeight: FontWeight.bold),
          display2: TextStyle(color: secondary),
          display1: TextStyle(color: secondary),
          headline: TextStyle(color: secondary, fontWeight: FontWeight.bold),
          title: TextStyle(color: secondary),
        ),
      );
}
