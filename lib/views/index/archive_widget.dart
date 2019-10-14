import 'package:flutter/material.dart';
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
              style: Theme.of(context).textTheme.headline,
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
      child: SizedBox(
        height: MediaQuery.of(context).size.height /
            (MediaQuery.of(context).orientation == Orientation.landscape
                ? 4
                : 3),
        width: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).orientation == Orientation.landscape
                ? 6
                : 1.2),
        child: Card(
          color: Colors.white70,
          child: Text("title"),
        ),
      ),
    );
  }
}
