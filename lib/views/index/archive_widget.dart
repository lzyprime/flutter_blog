import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_blog/generated/i18n.dart';
import 'package:flutter_blog/globals/global_theme.dart';

class ArchiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Material(
        color: GlobalThemes.indexBackgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              S.of(context).archive_title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.display2,
            ),
            Wrap(
              children: <Widget>[
                archiveBody(context),
                archiveBody(context),
                archiveBody(context),
                archiveBody(context),
                archiveBody(context),
                archiveBody(context),
              ],
            ),
          ],
        ),
      );

  Widget archiveBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height /
              (MediaQuery.of(context).orientation == Orientation.landscape
                  ? 4
                  : 3),
          minWidth: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).orientation == Orientation.landscape
                  ? 6
                  : 1.2),
          maxWidth: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).orientation == Orientation.landscape
                  ? 6
                  : 1.2),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('res/images/bg.jpg'),
                fit: BoxFit.cover
            ),
          ),
          child: Card(
            margin: EdgeInsets.all(0),
          color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "title",
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                  Text(
                    "description" * Random().nextInt(40),
                    style: Theme.of(context).textTheme.body1,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
