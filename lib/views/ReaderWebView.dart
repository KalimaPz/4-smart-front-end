import 'package:audioplayer/audioplayer.dart';
import 'package:eldercare/config/Views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ReaderWebView extends StatefulWidget {
  final String url;
  final String title;
  final String audioLink;
  final bool isWeb;
  const ReaderWebView(
      {Key key, this.url, this.title, this.audioLink, this.isWeb})
      : super(key: key);

  @override
  _ReaderWebViewState createState() => _ReaderWebViewState();
}

class _ReaderWebViewState extends State<ReaderWebView> {
  String localFilePath;

  AudioPlayer audioPlayer = AudioPlayer();
  @override
  void dispose() {
    super.dispose();
    audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isWeb == false) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            '${widget.title}',
            style: TextStyle(fontSize: Views.topicSize),
          ),
        ),
        persistentFooterButtons: [
          SizedBox(
              width: 64,
              height: 64,
              child: FlatButton(
                onPressed: () async {
                  await audioPlayer.play('${widget.audioLink}', isLocal: false);
                },
                color: Colors.blue[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(900)),
                child: Icon(
                  Icons.volume_up,
                  size: 32,
                ),
              )),
          SizedBox(
              width: 64,
              height: 64,
              child: FlatButton(
                onPressed: () async {
                  await audioPlayer.stop();
                },
                color: Colors.red[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(900)),
                child: Icon(
                  Icons.stop,
                  size: 32,
                ),
              )),
        ],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: RichText(
                    softWrap: true,
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Kanit',
                            fontSize: 18),
                        children: [
                          TextSpan(
                              text:
                                  'นักเดินทางจ้างลาตัวหนึ่งให้แบกตัวเขาไปยังชนบทอันห่างไกล เจ้าของลาติดตามนักเดินทางไปด้วยโดยเดินอยู่ข้างๆ นักเดินทางเพื่อจูงลาแบะนำทาง'),
                          TextSpan(
                              text:
                                  'ถนนสายนั้นทอดข้ามที่ราบซึ่งไม่มีต้นไม้เลยสักต้น แสงแดดจัดจ้าสาดส่องลงมาอย่างร้อนแรง ความร้อนทวีขึ้นจนในที่สุดนักเดินทางตัดสินใจที่จะหยุดพัก และเนื่องจากแถวนั้นไม่มีร่มเงาอื่นเลย นักเดินทางจึงนั่งหลบอยู่ใต้เงาของเจ้าลา'),
                          TextSpan(
                              text:
                                  'ความร้อนก็มีผลกับคนจูงลาไม่แพ้นักเดินทางเช่นกัน อีกทั้งยังย่ำแย่กว่าเนื่องจากเขาเดินด้วยเท้ามาตลอดทาง เขาเองก็อยากจะพักใต้เงาของลา เขาจึงเริ่มเถียงกับนักเดินทาง โดยบอกว่านักเดินทางจ่ายค่าจ้างเฉพาะลาเท่านั้น ไม่ได้รวมถึงเงาของมัน'),
                          TextSpan(
                              text:
                                  'ไม่ช้าทั้งสองก็แลกหมัดกัน และในระหว่างที่พวกเขากำลังต่อสู้กันอยู่นั้น เจ้าลาก็เดินหนีไป'),
                        ])),
              ),
            ),
          ),
        ),
      );
    } else
      return WebviewScaffold(
        persistentFooterButtons: [
          SizedBox(
              width: 64,
              height: 64,
              child: FlatButton(
                onPressed: () async {
                  await audioPlayer.play('${widget.audioLink}', isLocal: false);
                },
                color: Colors.blue[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(900)),
                child: Icon(
                  Icons.volume_up,
                  size: 32,
                ),
              )),
          SizedBox(
              width: 64,
              height: 64,
              child: FlatButton(
                onPressed: () async {
                  await audioPlayer.stop();
                },
                color: Colors.red[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(900)),
                child: Icon(
                  Icons.stop,
                  size: 32,
                ),
              )),
        ],
        appBar: AppBar(
          title: Text(
            '${widget.title}',
            style: TextStyle(fontSize: Views.topicSize),
          ),
        ),
        url: '${widget.url}',
      );
  }
}
