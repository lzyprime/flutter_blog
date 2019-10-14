import 'package:flutter/material.dart';

import 'package:flutter_blog/views/index/hero_widget.dart';
import 'package:flutter_blog/views/index/news_widget.dart';
import 'package:flutter_blog/views/index/archive_widget.dart';

class IndexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        children: [
          HeroWidget(),
          NewsWidget(),
          ArchiveWidget(),
        ],
      );
}
