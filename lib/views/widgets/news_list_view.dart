import 'package:flutter/material.dart';
import 'package:news_application/views/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 7,
        (context, index) {
          return const NewsTile();
        },
      ),
    );
  }
}
