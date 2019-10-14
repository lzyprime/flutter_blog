import 'package:flutter/material.dart';
import 'package:flutter_blog/generated/i18n.dart';

class HeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height -
            Scaffold.of(context).appBarMaxHeight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
        color: Colors.transparent,
      );
}
