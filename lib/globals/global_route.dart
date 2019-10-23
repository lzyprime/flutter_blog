import 'package:flutter_blog/views/hero_widget.dart';
import 'package:flutter_blog/views/main_widget.dart';


class Routes {
  Routes._();

  static final routeMaps = {
    HeroWidget.routeName: (_) => HeroWidget(),
    MainWidget.routeName: (_) => MainWidget(),
  };
}
