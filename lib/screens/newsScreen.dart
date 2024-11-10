import 'package:flutter/material.dart';
import 'package:news_api/providers/newsProvider.dart';
import 'package:news_api/widgets/NewsCard.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("News API",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Consumer<NewsProvider>(
         builder: (context, providerObj, child) {
           var article = providerObj.newsModel?.articles;
           var Data = providerObj.newsModel;
          if(Data == null){
            providerObj.getService();
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else{
           return ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: NewsCard(
                    title: article?[index].title ?? "",
                    description: article?[index].description ?? "",
                    urlImage: "Images/Adventure time.jpg",
                  ),
                );
              },
              itemCount: article?.length,
            );
          }
         },
      )
      );
  }
}
