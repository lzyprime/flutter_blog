import 'package:flutter/material.dart';

class GlobalThemes {
  GlobalThemes._();

  static final appThemeData = ThemeData(
    primarySwatch: Colors.purple,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
    ),
    toggleButtonsTheme: ToggleButtonsThemeData(
      color: Colors.white,
    ),
    textTheme: TextTheme(
      display3: TextStyle(color: Colors.purpleAccent),
      display1: TextStyle(color: Colors.white70),
      title: TextStyle(color: Colors.white),
      body1: TextStyle(color: Colors.white70),
      headline: TextStyle(color: Colors.purpleAccent),
    ),
  );
  static const indexBackgroundColor = Color.fromRGBO(0, 0, 0, 0.4);
}
