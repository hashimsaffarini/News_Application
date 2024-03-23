class ArticleModel {
  final String? imgUrl;
  final String? title;
  final String? subTitle;

  ArticleModel(
      {required this.imgUrl, required this.title, required this.subTitle});
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      imgUrl: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
