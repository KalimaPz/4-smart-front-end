import 'package:eldercare/actions/TextReader.dart';
import 'package:eldercare/components/ArticleArea.dart';
import 'package:eldercare/components/CustomHeader.dart';
import 'package:eldercare/components/CustomizableButton.dart';
import 'package:eldercare/config/Views.dart';
import 'package:eldercare/data/DataClass.dart';
import 'package:eldercare/data/Novel.dart';
import 'package:eldercare/views/ReaderWebView.dart';
import 'package:flutter/material.dart';

class Depress extends StatefulWidget {
  const Depress({Key key}) : super(key: key);

  @override
  _DepressState createState() => _DepressState();
}

class _DepressState extends State<Depress> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    TextReader.speak('ไม่ซึมเศร้า');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    TextReader.stop();
  }

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
        child: FittedBox(
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
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: CustomHeader(
                    text: 'อ่านนิทาน',
                    textSize: 28,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: CustomizableButton(
                            addedHeight: 20,
                            addedWidth: 30,
                            backgroundColor: Colors.blueAccent,
                            text: 'นิทานพ่อแม่',
                            callback: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReaderWebView(
                                          title: 'นิทานพ่อแม่',
                                          url: '${Novel.story[0]}',
                                        )))),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: CustomizableButton(
                            addedHeight: 20,
                            addedWidth: 30,
                            backgroundColor: Colors.red[900],
                            text: 'พญาไก่ป่า',
                            callback: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReaderWebView(
                                          title: 'พญาไก่ป่า',
                                          url: '${Novel.story[1]}',
                                        )))),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: CustomizableButton(
                            addedHeight: 20,
                            addedWidth: 30,
                            backgroundColor: Colors.green[800],
                            text: 'ลากับเงา',
                            callback: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReaderWebView(
                                          title: 'ลากับเงา',
                                          url: '${Novel.story[2]}',
                                        )))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
