import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_listview.dart';
import 'package:news_app/widgets/newsListview_builder.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                  color: Color.fromARGB(255, 42, 5, 206),
                  fontWeight: FontWeight.bold),
            ),
            Text('Cloud',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 221, 172, 10),
                ))
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 18.0, right: 18.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: categories_listview()),
            NewsListViewBuilder(
              category: 'general',
            )
          ],
        ),
      ),
    );
  }
}
