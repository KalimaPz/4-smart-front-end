import 'package:eldercare/actions/TextReader.dart';
import 'package:eldercare/components/ArticleArea.dart';
import 'package:eldercare/components/CustomHeader.dart';
import 'package:eldercare/components/VideoPlayerComponent.dart';
import 'package:eldercare/config/Views.dart';
import 'package:eldercare/data/DataClass.dart';
import 'package:flutter/material.dart';

class FellDown extends StatefulWidget {
  final Future lessonData;
  const FellDown({Key key, this.lessonData}) : super(key: key);

  @override
  _FellDownState createState() => _FellDownState();
}

class _FellDownState extends State<FellDown> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    TextReader.speak('ไม่ล้ม');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    TextReader.stop();
  }

  @override
  Widget build(BuildContext context) {
    final String title = 'ไม่ล้ม';
    final double imageSize = 150;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('$title', style: TextStyle(fontSize: Views.titleSize)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: FittedBox(
          child: Container(
              child: Column(children: [
            Container(
                padding: EdgeInsets.all(Views.topicPadding),
                child: CustomHeader(
                  text: '${DataClass.fellDownPage['content'][0]['header']}',
                  backgroundColor: Colors.blue,
                  textSize: Views.topicSize,
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildDataPictureWidget(
                        picture: Image.asset(
                          'assets/images/Done/4.png',
                          width: imageSize,
                          height: imageSize,
                        ),
                        text:
                            '${DataClass.fellDownPage['content'][0]['detail'][0]}',
                        direction: TextDirection.ltr),
                    buildDataPictureWidget(
                        picture: Image.asset(
                          'assets/images/Done/3.png',
                          width: imageSize,
                          height: imageSize,
                        ),
                        text:
                            '${DataClass.fellDownPage['content'][0]['detail'][1]}',
                        direction: TextDirection.ltr),
                    buildDataPictureWidget(
                        picture: Image.asset(
                          'assets/images/Done/9.png',
                          width: imageSize,
                          height: imageSize,
                        ),
                        text:
                            '${DataClass.fellDownPage['content'][0]['detail'][2]}',
                        direction: TextDirection.ltr),
                  ],
                )),
            Padding(
              padding: EdgeInsets.all(Views.topicPadding),
              child: CustomHeader(
                text: '${DataClass.fellDownPage['content'][1]['header']}',
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                addHeight: 40,
                textSize: Views.topicSize,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ArticleArea(
                headerBgColor: Colors.green[900],
                topic:
                    '${DataClass.fellDownPage['content'][1]['detail'][1]['header']}',
                textSize: Views.subTopicSize,
                contents: [
                  GestureDetector(
                    onTap: () => TextReader.speak(
                        '${DataClass.fellDownPage['content'][1]['detail'][1]['detail']}'),
                    child: Text(
                        '${DataClass.fellDownPage['content'][1]['detail'][1]['detail']}',
                        style: TextStyle(fontSize: Views.contentTextSize)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ArticleArea(
                headerBgColor: Colors.red[700],
                topic:
                    '${DataClass.fellDownPage['content'][1]['detail'][0]['header']}',
                textSize: Views.subTopicSize,
                contents: [
                  GestureDetector(
                    onTap: () => TextReader.speak(
                        '${DataClass.fellDownPage['content'][1]['detail'][0]['detail']}'),
                    child: Text(
                        '${DataClass.fellDownPage['content'][1]['detail'][0]['detail']}',
                        style: TextStyle(fontSize: Views.contentTextSize)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomHeader(
                mainAxisAlignment: MainAxisAlignment.center,
                text: 'ไม่ล้ม',
                textSize: Views.topicSize,
                addHeight: Views.topicPadding,
                addWidth: Views.topicPadding,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: VideoPlayerComponent(
                videoUrl: 'c0yzKFn_KAA',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: VideoPlayerComponent(
                videoUrl: 'raiL_XKL2Is',
              ),
            )
          ])),
        ),
      )),
    );
  }

  Widget buildDataPictureWidget(
      {Widget picture, String text, TextDirection direction}) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: direction,
      children: [
        picture,
        SizedBox(
          width: 200,
          child: CustomHeader(
            text: text,
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            addHeight: 10,
            textSize: Views.contentTextSize,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ],
    ));
  }
}
