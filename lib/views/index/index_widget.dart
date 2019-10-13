import 'package:flutter/material.dart';
import 'package:flutter_blog/generated/i18n.dart';

import 'package:flutter_blog/views/index/hero_widget.dart';
import 'package:flutter_blog/views/index/news_widget.dart';

class IndexWidget extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<IndexWidget> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).appbar_title),
          actions: <Widget>[
            ToggleButtons(
              isSelected: [false, false, false]..[_currentIndex] = true,
              children: <Widget>[Text('主页'), Text('最新动态'), Text("分类")],
              onPressed: (index) {
                _pageController.animateToPage(index,
                    duration: Duration(seconds: 1), curve: Curves.ease);
              },
            )
          ],
        ),
        body: PageView(
          children: [
            HeroWidget(),
            NewsWidget(),
            HeroWidget(),
          ],
          controller: _pageController,
          scrollDirection: Axis.vertical,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        extendBodyBehindAppBar: true,
      );
}
