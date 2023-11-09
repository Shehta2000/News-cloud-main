import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/categoryscreen.dart';

class categorycard extends StatelessWidget {
  const categorycard({super.key, required this.category});

  final category_model category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: category.category_name,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(category.Imageurl), fit: BoxFit.fill)),
          child: Center(
            child: Text(
              category.category_name,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
