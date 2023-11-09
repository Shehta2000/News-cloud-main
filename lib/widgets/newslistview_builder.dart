import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/NewsServices.dart';
import 'package:news_app/widgets/error_message.dart';
import 'package:news_app/widgets/news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var Future;
  @override
  void initState() {
    Future = NewsServices().getNews(categories: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: Future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return news_listview(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(child: ErrorMesaage());
          } else {
            return const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
