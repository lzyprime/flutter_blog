import 'package:flutter/material.dart';
import 'package:flutter_blog/generated/i18n.dart';
import 'package:flutter_blog/views/index_weiget.dart';

class MainWidget extends StatefulWidget {
  static const routeName = '/main';

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
              isSelected: [true, false],
              children: <Widget>[
                Text('首页'),
                Text('首页'),
              ],
            )
          ],
        ),
        body: PageView(
          children: <Widget>[
            IndexWidget(),
          ],
        ),
        extendBodyBehindAppBar: true,
      );
}
