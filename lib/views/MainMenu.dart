import 'package:eldercare/components/CircularButton.dart';
import 'package:eldercare/components/CustomHeader.dart';
import 'package:eldercare/views/Depress.dart';
import 'package:eldercare/views/FellDown.dart';
import 'package:eldercare/views/Forget.dart';
import 'package:eldercare/views/Meal.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainMenu extends StatefulWidget {
  MainMenu({Key key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('เมนูหลัก'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: CustomHeader(
                    text: 'คุณคือ ',
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/appicon.png',
                    height: 200,
                    width: 200,
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
              CircularButton(
                  icon: FontAwesomeIcons.userInjured,
                  backgroundColor: Colors.blue,
                  iconColor: Colors.white,
                  subtitle: 'ไม่ล้ม',
                  size: 128,
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FellDown(),
                        ));
                  }),
              CircularButton(
                  icon: FontAwesomeIcons.question,
                  backgroundColor: Colors.blue,
                  iconColor: Colors.white,
                  subtitle: 'ไม่ลืม',
                  size: 128,
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Forget(),
                        ));
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularButton(
                  icon: FontAwesomeIcons.smileWink,
                  backgroundColor: Colors.blue,
                  iconColor: Colors.white,
                  subtitle: 'ไม่ซึมเศร้า',
                  size: 128,
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Depress(),
                        ));
                  }),
              CircularButton(
                  icon: FontAwesomeIcons.utensils,
                  backgroundColor: Colors.blue,
                  iconColor: Colors.white,
                  subtitle: 'กินข้าวอร่อย',
                  size: 128,
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Meal(),
                        ));
                  })
            ],
          ),
        ],
      ),
    );
  }
}
