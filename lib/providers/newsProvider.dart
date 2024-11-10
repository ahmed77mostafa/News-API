import 'package:flutter/material.dart';
import 'package:news_api/models/NewsModel.dart';
import '../services/newsService.dart';

class NewsProvider extends ChangeNotifier{
  NewsModel? newsModel;

  Future<void> getService()async{
    newsModel = await NewsService.getNewsService();
    notifyListeners();
  }
}