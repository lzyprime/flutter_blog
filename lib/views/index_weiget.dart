import 'dart:html';
import 'package:flutter/material.dart';
import '../generated/i18n.dart';

class IndexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              S.of(context).news_title,
              style: Theme.of(context).textTheme.display1,
              textAlign: TextAlign.center,
            ),
          ),
          _NewsCard(
            'title',
            '2019-10-23',
            image: 'assets/images/bg.jpg',
            content: "this is content test",
            url: 'https://github.com',
          ),
          _NewsCard(
            'title',
            '2019-10-23',
            content: "this is content test",
          ),
        ],
      );
}

class _NewsCard extends StatefulWidget {
  final image;
  final title;
  final content;
  final date;
  final url;
  final routeName;

  _NewsCard(this.title, this.date,
      {this.image, this.content = "", this.url, this.routeName});

  @override
  _NewsCardState createState() =>
      _NewsCardState(title, date, image, content, url, routeName);
}

class _NewsCardState extends State<StatefulWidget> {
  final image;
  final title;
  final content;
  final date;
  final url;
  final routeName;

  _NewsCardState(this.title, this.date, this.image, this.content, this.url,
      this.routeName);

  @override
  Widget build(BuildContext context) => Material(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? MediaQuery.of(context).size.width / 5
                      : 8.0),
          child: InkWell(
            onTap: routeName == null
                ? (url == null
                    ? null
                    : () {
                        window.location.replace(url);
                      })
                : Navigator.pushNamed(context, routeName),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    image == null
                        ? Center()
                        : Expanded(
                            child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          )),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            title,
                            style: Theme.of(context).textTheme.headline,
                          ),
                          Text(
                            content,
                            style: Theme.of(context).textTheme.body1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
