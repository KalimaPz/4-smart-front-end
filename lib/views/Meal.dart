import 'package:eldercare/components/ArticleArea.dart';
import 'package:eldercare/config/Views.dart';
import 'package:eldercare/data/DataClass.dart';
import 'package:flutter/material.dart';

class Meal extends StatelessWidget {
  const Meal({Key key}) : super(key: key);
  final double imageSize = 256;
  @override
  Widget build(BuildContext context) {
    final String title = 'กินข้าวอร่อย';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '$title',
          style: TextStyle(fontSize: Views.titleSize),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Container(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ArticleArea(
                topic: '${DataClass.mealPage['content'][0]['header']}',
                textSize: Views.topicSize,
                contents: [
                  Text('${DataClass.mealPage['content'][0]['detail'][0]}',
                      style: TextStyle(fontSize: Views.contentTextSize)),
                  Padding(
                    padding: EdgeInsets.all(Views.topicPadding),
                    child: Image.asset(
                      'assets/images/Done/6.png',
                      width: imageSize,
                      height: imageSize,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
