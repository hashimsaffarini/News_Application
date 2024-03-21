import 'package:dio/dio.dart';
import 'package:news_application/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  getNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=fce0158b70c24741b37dd8baf677acb8');
    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          imgUr: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);
      articlesList.add(articleModel);
    }
  }
}
