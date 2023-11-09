import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class news_listview extends StatelessWidget {
  const news_listview({
    super.key,
    required this.articles,
  });
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return NewsTile(
        articleModel: articles[index],
      );
    }));
  }
}
