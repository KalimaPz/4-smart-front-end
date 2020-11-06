import 'package:eldercare/actions/TextReader.dart';
import 'package:eldercare/components/CustomizableButton.dart';
import 'package:eldercare/config/Views.dart';
import 'package:eldercare/views/MainMenu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Correct extends StatefulWidget {
  const Correct({Key key}) : super(key: key);

  @override
  _CorrectState createState() => _CorrectState();
}

class _CorrectState extends State<Correct> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    TextReader.speak('ยินดีด้วยคุณตอบถูก');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    TextReader.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Text('4 SMART',
                  style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'FredokaOne',
                      color: Colors.lightBlue[900])),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text('ยินดีด้วยคุณตอบถูก',
                  style: TextStyle(fontSize: Views.topicSize)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  color: Colors.green[700]),
              child: FaIcon(
                FontAwesomeIcons.checkCircle,
                color: Colors.white,
                size: 75,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: CustomizableButton(
                  text: 'กลับไปยังหน้าแรก',
                  addedHeight: 20,
                  backgroundColor: Colors.green[700],
                  callback: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainMenu(),
                        ),
                        (route) => false);
                  }),
            )
          ],
        )),
      ),
    );
  }
}
