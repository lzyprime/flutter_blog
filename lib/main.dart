import 'package:flutter/material.dart';
import 'package:flutter_blog/generated/i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_blog/views/main_widget.dart';
import 'package:flutter_blog/globals/global_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        localeResolutionCallback:
            S.delegate.resolution(fallback: Locale('zh', 'CN')), // 强制指定语言
        // route:
        theme: GlobalThemes.blueThemeData,
        home: MainWidget(),
      );
}
