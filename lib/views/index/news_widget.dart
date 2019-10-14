import 'package:flutter/material.dart';
import 'package:flutter_blog/generated/i18n.dart';

import 'package:flutter_blog/globals/global_theme.dart';

class NewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Material(
        color: GlobalThemes.indexBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                S.of(context).news_title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline,
              ),
              newsCard(context, "title1", "news info news info"),
              newsCard(context, "title2", "news info news info"),
            ],
          ),
        ),
      );

  Widget newsCard(BuildContext context, String title, String newsInfo) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(
            context: context,
            builder: (_) => Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: Text("fff")));
      },
      child: Card(
        color: Colors.black87,
        child: Container(
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width / 1.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(newsInfo),
            ],
          ),
        ),
      ),
    );
  }
}
