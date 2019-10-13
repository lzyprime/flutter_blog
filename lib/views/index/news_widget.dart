import 'dart:math';

import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        direction: Axis.vertical,
        children: <Widget>[
          SizedBox(height: 120),
          buildNewsBody(context, "title", "news info news info", bgImage: 'res/images/hero_bg.jpg'),
          buildNewsBody(context, "title", "news info news info"),
        ],
      );

  Expanded buildNewsBody(BuildContext context, String title, String newsInfo,
      {String bgImage}) {
    return Expanded(
      child: Card(
        child: Container(
          decoration: bgImage != null
              ? BoxDecoration(
                  image: DecorationImage(
                  image: ExactAssetImage(bgImage),
                  fit: BoxFit.cover,
                ))
              : null,
          color: bgImage == null ? Colors.black87 : null,
          constraints: BoxConstraints(
              minWidth: double.infinity, minHeight: double.infinity),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'thitle',
                style: Theme.of(context).textTheme.title,
              ),
              Text('dnasoidnasfonsdfoisdnfs'),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'go',
                    style: Theme.of(context).textTheme.body1,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
