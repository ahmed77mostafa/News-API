import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String urlImage;
  final String title;
  final String description;

  const NewsCard({
        super.key,
        required this.urlImage,
        required this.title,
        required this.description
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6)
                  ),
                  width: 400, height: 280,
                    child: Image.asset(urlImage)
                ),
              ],
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 4,
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 14
              ),
              maxLines: 8,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
