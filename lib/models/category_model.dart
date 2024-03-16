class CategoryModel {
  final String imgUrl;
  final String categoryName;

  CategoryModel({required this.imgUrl, required this.categoryName});
}

List<CategoryModel> categories = [
  CategoryModel(
      imgUrl: 'assets/images/technology.jpeg', categoryName: 'Technology'),
  CategoryModel(imgUrl: 'assets/images/sports.jpg', categoryName: 'Sports'),
  CategoryModel(imgUrl: 'assets/images/business.jpg', categoryName: 'Business'),
  CategoryModel(
      imgUrl: 'assets/images/entertaiment.jpg', categoryName: 'Entertainment'),
  CategoryModel(imgUrl: 'assets/images/general.jpg', categoryName: 'General'),
  CategoryModel(imgUrl: 'assets/images/health.jpg', categoryName: 'Health'),
  CategoryModel(imgUrl: 'assets/images/science.jpg', categoryName: 'Science'),
];
