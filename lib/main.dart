import 'package:flutter/material.dart';
import 'package:news_api/providers/newsProvider.dart';
import 'package:news_api/screens/newsScreen.dart';
import 'package:news_api/widgets/NewsCard.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => NewsProvider(),
        child: NewsScreen(),
      ),
    );
  }
}