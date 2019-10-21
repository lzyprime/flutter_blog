
import 'package:flutter/material.dart';
import 'package:flutter_blog/views/index_widget.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MainWidget> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) => PageView(
    children: <Widget>[
      IndexWidget(),
    ],
  );
}
