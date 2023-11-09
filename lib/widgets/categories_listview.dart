import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/categorycard.dart';

class categories_listview extends StatelessWidget {
  const categories_listview({super.key});

  final List<category_model> categories = const [
    category_model(
        Imageurl: 'assets/Business11.jpg', category_name: 'Business'),
    category_model(
        Imageurl: 'assets/entertaiment.avif', category_name: 'Entertainment'),
    category_model(Imageurl: 'assets/general.avif', category_name: 'General'),
    category_model(Imageurl: 'assets/health.avif', category_name: 'Health'),
    category_model(Imageurl: 'assets/science.avif', category_name: 'Science'),
    category_model(Imageurl: 'assets/sports.avif', category_name: 'Sports'),
    category_model(
        Imageurl: 'assets/technology.jpeg', category_name: 'Technology')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return categorycard(
              category: categories[index],
            );
          }),
    );
  }
}
