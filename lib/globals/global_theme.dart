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
      display4: TextStyle(color: Colors.purpleAccent),
      display3: TextStyle(color: Colors.purpleAccent),
      display2: TextStyle(color: Colors.purpleAccent),
      display1: TextStyle(color: Colors.pinkAccent),
      headline: TextStyle(color: Colors.pinkAccent),
      title: TextStyle(color: Colors.white),
      body1: TextStyle(color: Colors.white),
    ),
  );
  static const indexBackgroundColor = Color.fromRGBO(0, 0, 0, 0.4);
}
