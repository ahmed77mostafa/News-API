import 'package:dio/dio.dart';
import 'package:news_api/models/NewsModel.dart';


class NewsService{
  static Dio dio = Dio();

  static Future<NewsModel> getNewsService() async{
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/everything?q=tesla&from=2024-10-10&sortBy=publishedAt&apiKey=9ab3b62b3901438e931b8592e1b96056");
      if (response.statusCode == 200) {
        return NewsModel.fromJson(response.data);
      }
      else {
        throw Exception('Failed to load data....');
      }
    }
    catch(e){
      throw Exception('Error $e');
    }
  }
}