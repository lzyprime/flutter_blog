import 'package:flutter/material.dart';

class GlobalThemes {
  GlobalThemes._();

  static get appThemeData => _buildThemeData();

  static get blueThemeData => _buildThemeData(primary: Colors.blue);

  static const newsBackgroundColor = [Colors.black87, Colors.white10];

  static _buildThemeData(
          {Color primary = Colors.purpleAccent,
          Color secondary = Colors.pinkAccent,
          Color body = Colors.white}) =>
      ThemeData(
        primarySwatch: primary,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
        ),
        toggleButtonsTheme: ToggleButtonsThemeData(
          color: body,
        ),
        textTheme: TextTheme(
          display4: TextStyle(color: primary, fontWeight: FontWeight.bold),
          display3: TextStyle(color: primary, fontWeight: FontWeight.bold),
          display2: TextStyle(color: secondary),
          display1: TextStyle(color: secondary),
          headline: TextStyle(color: primary, fontWeight: FontWeight.bold),
          title: TextStyle(color: body),
          body1: TextStyle(color: body),
          body2: TextStyle(color: body),
        ),
      );
}
