import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_blog/generated/i18n.dart';
import 'package:flutter_blog/views/index_widget.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MainWidget> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(S.of(context).appbar_title), elevation: 20),
        body: PageView(
          children: <Widget>[Text('ok')],
        ),
        extendBodyBehindAppBar: true,
      );
}
