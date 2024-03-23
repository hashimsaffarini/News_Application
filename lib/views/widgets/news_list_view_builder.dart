import 'package:flutter/material.dart';
import 'package:news_application/services/news_service.dart';
import 'package:news_application/views/widgets/news_list_view.dart';

class NewListViewBuilder extends StatelessWidget {
  final String category;
  const NewListViewBuilder({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsService().getTopHeadLines(
        category: category,
      ),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('Error fetching news'),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }
      },
    );
    // return isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Center(
    //           child: CircularProgressIndicator.adaptive(),
    //         ),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsListView(articles: articles)
    //         : const SliverToBoxAdapter(
    //             child: Center(
    //               child: Text('No news found'),
    //             ),
    //           );
  }
}
