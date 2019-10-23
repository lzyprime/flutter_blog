import 'package:flutter/material.dart';
import 'package:flutter_blog/generated/i18n.dart';

import 'package:flutter_blog/views/main_widget.dart';

import 'main_widget.dart';

class HeroWidget extends StatelessWidget {
  static const routeName = '/welcome';

  @override
  Widget build(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/images/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                S.of(context).title,
                style:
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? Theme.of(context).textTheme.display4
                        : Theme.of(context).textTheme.display3,
              ),
              Text(
                S.of(context).title,
                style: Theme.of(context).textTheme.display1,
              ),
              _HeroButton(),
            ],
          ),
        ),
      );
}

class _HeroButton extends StatefulWidget {
  @override
  _HeroButtonState createState() => _HeroButtonState();
}

class _HeroButtonState extends State<_HeroButton> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 80),
        child: RaisedButton(
          color: Colors.transparent,
          hoverColor: Colors.grey,
          shape: CircleBorder(side: BorderSide(width: 2, color: Colors.white)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          onPressed: () =>
              Navigator.pushReplacementNamed(context, MainWidget.routeName),
        ),
      );
}
