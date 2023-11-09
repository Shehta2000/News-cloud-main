import 'package:flutter/material.dart';
import 'package:news_app/screens/homescreen.dart';

void main() {
  runApp(const news_app());
}

class news_app extends StatelessWidget {
  const news_app({super.key});

  @override
  Widget build(BuildContext context) {
    return (const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homescreen(),
    ));
  }
}
