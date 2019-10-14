import 'package:flutter/material.dart';
import 'package:flutter_blog/generated/i18n.dart';
import 'package:flutter_blog/views/index/index_widget.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MainWidget> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).appbar_title),
          actions: <Widget>[
            ToggleButtons(
              isSelected: [true],
              children: <Widget>[
                Text('主页'),
              ],
              onPressed: (index) {},
            )
          ],
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage("res/images/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: PageView(
              children: <Widget>[IndexWidget()],
            )),
        extendBodyBehindAppBar: true,
      );
}
