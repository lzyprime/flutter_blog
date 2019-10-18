import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_blog/generated/i18n.dart';

class IndexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        children: [
          HeroWidget(),
        ],
      );
}

class HeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SizedBox(
    height: MediaQuery.of(context).size.height,
    child: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Image.asset('res/images/bg.jpg'),
        ),
        Center(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height / 4),
                Text(
                  S.of(context).title,
                  style: MediaQuery.of(context).orientation == Orientation.landscape
                      ? Theme.of(context).textTheme.display4
                      : Theme.of(context).textTheme.display3,
                ),
                Text(
                  S.of(context).sub_title,
                  style: Theme.of(context).textTheme.display1,
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

class NewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
        ),
        constraints: BoxConstraints(
          minWidth: double.infinity,
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                S.of(context).news_title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.display2,
              ),
            ),
            newsCard(context, "title1",
                "news info news info fsfsdfsfsdlfsdlfdslflslfdslfslfdlsfls"),
            newsCard(context, "title2", "news info news info"),
          ],
        ),
      );

  Widget newsCard(BuildContext context, String title, String newsInfo) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      color: Colors.transparent,
      shape: Border.fromBorderSide(
        BorderSide(color: Theme.of(context).primaryColor),
      ),
      child: FlatButton(
        onPressed: () {},
        hoverColor: Theme.of(context).accentColor.withOpacity(0.4),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: double.infinity,
            minHeight: MediaQuery.of(context).size.height / 6,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context).textTheme.headline,
              ),
              Text(
                newsInfo,
                style: Theme.of(context).textTheme.title,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
