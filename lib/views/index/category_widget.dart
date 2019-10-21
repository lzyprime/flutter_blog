import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_blog/generated/i18n.dart';

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Material(
//        color: GlobalThemes.indexBackgroundColor,
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
                _categoryBody(context,
                    title: "title1", description: "iufnvinbivmifdsvnfkd"),
                _categoryBody(context,
                    title: "title2", bgImage: "res/images/bg.jpg"),
                _categoryBody(context,
                    title: "title3",
                    description: "iufnvinbivmifdsvnfkd",
                    bgImage: "res/images/bg.jpg"),
                _categoryBody(context, title: "title4", bgColor: Colors.brown),
                _categoryBody(context, title: "title5", bgColor: Colors.blue),
                _categoryBody(context,
                    title: "title6",
                    bgImage: "res/images/bg.jpg",
                    bgColor: Colors.indigo),
              ],
            ),
          ],
        ),
      );

  Widget _categoryBody(BuildContext context,
      {@required String title,
      String description,
      String bgImage,
      Color bgColor = Colors.black}) {
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
          decoration: bgImage == null
              ? null
              : BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('res/images/bg.jpg'),
                      fit: BoxFit.cover),
                ),
          child: Card(
            margin: EdgeInsets.all(0),
            color: bgColor.withOpacity(0.54),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                  Text(
                    description ?? "",
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
