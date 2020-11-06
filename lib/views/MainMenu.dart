import 'package:eldercare/actions/Fetch.dart';
import 'package:eldercare/actions/TextReader.dart';
import 'package:eldercare/components/CircularButton.dart';
import 'package:eldercare/components/CustomHeader.dart';
import 'package:eldercare/components/CustomizableButton.dart';
import 'package:eldercare/config/Views.dart';
import 'package:eldercare/data/DataClass.dart';
import 'package:eldercare/views/Depress.dart';
import 'package:eldercare/views/FellDown.dart';
import 'package:eldercare/views/Forget.dart';
import 'package:eldercare/views/Meal.dart';
import 'package:eldercare/views/Poll.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Register.dart';

class MainMenu extends StatefulWidget {
  final Future lessonData;

  MainMenu({Key key, this.lessonData}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  String firstName;
  String lastName;
  Future getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('name') == null) {
      print('Found NUll');
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => Register(),
          ),
          (route) => false);
    }
    print(prefs.getString('name'));
    // print(prefs.getString('lname'));
    print(prefs.getKeys());

    setState(() {
      firstName = prefs.getString('name');
      // lastName = prefs.getString('lname');
    });
  }

  void prefClear() async {
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
  }

  Future lessonData;
  @override
  void initState() {
    super.initState();
    lessonData = Fetch.getData();
    getUserData();
    TextReader.speak(DataClass.instruction[0]);
  }

  @override
  void dispose() {
    super.dispose();
    TextReader.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('เมนูหลัก', style: TextStyle(fontSize: Views.titleSize)),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(30),
                  child: CustomHeader(
                    text: 'คุณคือ $firstName ',
                    mainAxisAlignment: MainAxisAlignment.center,
                    textSize: Views.subTopicSize,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'assets/images/appicon.png',
                    height: 150,
                    width: 150,
                  ),
                ),
                buttonContainer()
              ],
            ),
          ),
        )));
  }

  Widget buttonContainer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: CircularButton(
                    icon: FontAwesomeIcons.userInjured,
                    backgroundColor: Color.fromRGBO(155, 36, 36, 1),
                    iconColor: Colors.white,
                    subtitle: 'ไม่ล้ม',
                    size: 64,
                    callback: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                FellDown(lessonData: lessonData),
                          ));
                    }),
              ),
              FittedBox(
                child: CircularButton(
                    icon: FontAwesomeIcons.question,
                    backgroundColor: Color.fromRGBO(97, 37, 124, 1),
                    iconColor: Colors.white,
                    subtitle: 'ไม่ลืม',
                    size: 64,
                    callback: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Forget(),
                          ));
                    }),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: CircularButton(
                    icon: FontAwesomeIcons.smileWink,
                    backgroundColor: Color.fromRGBO(35, 152, 157, 1),
                    iconColor: Colors.white,
                    subtitle: 'ไม่ซึมเศร้า',
                    size: 64,
                    callback: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Depress(),
                          ));
                    }),
              ),
              FittedBox(
                child: CircularButton(
                    icon: FontAwesomeIcons.utensils,
                    backgroundColor: Color.fromRGBO(35, 136, 43, 1),
                    iconColor: Colors.white,
                    subtitle: 'กินข้าวอร่อย',
                    size: 64,
                    callback: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Meal(),
                          ));
                    }),
              )
            ],
          ),
          // RaisedButton(child: Text('PREF CLS'), onPressed: () => prefClear()),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: CustomizableButton(
                text: 'แบบประเมิน',
                addedHeight: 20,
                backgroundColor: Colors.blue,
                callback: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Poll(),
                    ))),
          ),
          // RaisedButton(
          //   child: Text(
          //     'Speak',
          //   ),
          //   onPressed: () => TextReader.speak(),
          // )
        ],
      ),
    );
  }
}
