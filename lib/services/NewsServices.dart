import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final dio = Dio();

  Future<List<ArticleModel>> getNews({required String categories}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=7f29601f4fd442d893433a716e058f51&category=$categories');

      Map<String, dynamic> jsondata = response.data;

      List<dynamic> articles = jsondata['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            subtitle: article['description'],
            title: article['title']);

        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
