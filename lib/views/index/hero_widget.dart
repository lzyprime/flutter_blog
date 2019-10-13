import 'package:flutter/material.dart';
import 'package:flutter_blog/generated/i18n.dart';

class HeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('res/images/hero_bg.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              S.of(context).title,
              style: Theme.of(context).textTheme.display3,
            ),
            Text(
              S.of(context).sub_title,
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      );
}
