import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_blog/generated/i18n.dart';

class IndexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scrollbar(
        child: CustomScrollView(
            slivers: <Widget>[
          SliverAppBar(
            title: Text(S.of(context).appbar_title),
            textTheme: Theme.of(context).appBarTheme.textTheme,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image.asset('res/images/bg.jpg', fit: BoxFit.cover),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        S.of(context).title,
                        style: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? Theme.of(context).textTheme.display4
                            : Theme.of(context).textTheme.display3,
                      ),
                      Text(
                        S.of(context).title,
                        style: Theme.of(context).textTheme.display1,
                      )
                    ],
                  )
                ],
                fit: StackFit.expand,
              ),
            ),
            actions: <Widget>[
              ToggleButtons(
                isSelected: [true, false],
                children: <Widget>[Text('首页'), Text('首页2')],
                onPressed: (index) {},
              ),
            ],
            backgroundColor: Theme.of(context).primaryColor,
            expandedHeight: MediaQuery.of(context).size.height * 0.9,
            pinned: true,
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 400),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                  (_, index) => index == 0
                      ? Padding(
                          padding: EdgeInsets.all(50),
                          child: Text(
                            S.of(context).news_title,
                            style: Theme.of(context).textTheme.display1,
                            textAlign: TextAlign.center,
                          ))
                      : newsCard(index, context),
                  childCount: 50),
            ),
          )
        ]),
      );

  Card newsCard(int index, BuildContext context) {
    return Card(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 128),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              index % 2 == 0
                  ? Container(
                      width: 400,
                      height: 320,
                      child: Image.asset(
                        'res/images/head.jpg',
                        fit: BoxFit.cover,
                      ),
                    )
                  : Center(),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        'title $index',
                        style: Theme.of(context).textTheme.headline,
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {},
                      hoverColor: Theme.of(context).accentColor.withOpacity(0.3),
                    ),
                    Text(
                      '2019-10-20',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subhead,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'subtitle $index,'
                        'subtitle $index,'
                        'subtitle $index,'
                        'subtitle $index,'
                        'subtitle $index,'
                        'subtitle $index,'
                        'subtitle $index,'
                        'subtitle $index,'
                        'subtitle $index,'
                        'subtitle $index,'
                        'subtitle $index,',
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
