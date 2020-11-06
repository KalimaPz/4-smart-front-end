import 'package:eldercare/actions/TextReader.dart';
import 'package:eldercare/components/ArticleArea.dart';
import 'package:eldercare/components/CustomHeader.dart';
import 'package:eldercare/components/VideoPlayerComponent.dart';
// import 'package:eldercare/components/VideoPlayerComponent.dart';
import 'package:eldercare/config/Views.dart';
import 'package:eldercare/data/DataClass.dart';
import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

class Meal extends StatefulWidget {
  const Meal({Key key}) : super(key: key);

  @override
  _MealState createState() => _MealState();
}

class _MealState extends State<Meal> {
  @override
  void initState() {
    // TODO: implement initState
    TextReader.speak('กินข้าวอร่อย');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    TextReader.stop();
  }

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
          child: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ArticleArea(
                  topic: '${DataClass.mealPage['content'][0]['header']}',
                  textSize: Views.topicSize,
                  contents: [
                    GestureDetector(
                      onTap: () => TextReader.speak(
                          '${DataClass.mealPage['content'][0]['detail'][0]}'),
                      child: Text(
                          '${DataClass.mealPage['content'][0]['detail'][0]}',
                          style: TextStyle(fontSize: Views.contentTextSize)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Views.topicPadding),
                      child: Image.asset(
                        'assets/images/Done/6.png',
                        width: imageSize,
                        height: imageSize,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: CustomHeader(
                              text: 'การแปรงฟันอย่างถูกวิธี',
                              textSize: Views.subTopicSize,
                            ),
                          ),
                        ],
                      ),
                    ),
                    VideoPlayerComponent(videoUrl: 'HYayn0wTlM0'),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
