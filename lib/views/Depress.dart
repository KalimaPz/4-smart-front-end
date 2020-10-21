import 'package:eldercare/components/CustomHeader.dart';
import 'package:eldercare/config/Views.dart';
import 'package:eldercare/data/DataClass.dart';
import 'package:flutter/material.dart';

class Depress extends StatelessWidget {
  const Depress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = 'ซึมเศร้า';
    const double spacer = 20;
    const double imageSize = 256;
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
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(Views.topicPadding),
                child: CustomHeader(
                  mainAxisAlignment: MainAxisAlignment.center,
                  text: '${DataClass.depressPage['content'][0]['header']}',
                  textSize: Views.topicSize,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(spacer),
                child: CustomHeader(
                  textSize: Views.contentTextSize,
                  text:
                      '1. ${DataClass.depressPage['content'][0]['detail'][0]}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/Done/2.png',
                  width: imageSize,
                  height: imageSize,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(spacer),
                child: CustomHeader(
                  textSize: Views.contentTextSize,
                  text:
                      '2. ${DataClass.depressPage['content'][0]['detail'][1]}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/Done/5.png',
                  width: imageSize,
                  height: imageSize,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(spacer),
                child: CustomHeader(
                  textSize: Views.contentTextSize,
                  text:
                      '3. ${DataClass.depressPage['content'][0]['detail'][2]}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/Done/6.png',
                  width: imageSize,
                  height: imageSize,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
