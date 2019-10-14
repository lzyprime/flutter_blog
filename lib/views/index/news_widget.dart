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
                style: Theme.of(context).textTheme.display2,
              ),
              newsCard(context, "title1",
                  "news info news info fsfsdfsfsdlfsdlfdslflslfdslfslfdlsfls"),
              newsCard(context, "title2", "news info news info"),
            ],
          ),
        ),
      );

  Widget newsCard(BuildContext context, String title, String newsInfo) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        color: Colors.black87,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width / 1.5,
            maxWidth: MediaQuery.of(context).size.width / 1.5,
            minHeight: MediaQuery.of(context).size.height / 6,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
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
      ),
    );
  }
}
