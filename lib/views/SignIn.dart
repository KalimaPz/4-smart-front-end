import 'package:eldercare/components/CustomizableButton.dart';
import 'package:eldercare/views/MainMenu.dart';
import 'package:eldercare/views/Register.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  // final Future lessonData;
  const SignIn({
    Key key,
    // this.lessonData
  }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MainMenu(),
          ));
    } else {
      await prefs.setBool('seen', true);
      // Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => Register(),
      //     ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkFirstSeen();
  }

  final String title = '4 Smart';

  final double titleSize = 28.0;

  Widget buildAppBanner() {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(60),
          child: Text(
            '$title',
            style: TextStyle(
                color: Colors.lightBlue[900],
                fontFamily: 'FredokaOne',
                fontSize: titleSize,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset(
            'assets/images/appicon.png',
            height: 128,
            width: 128,
          ),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildAppBanner(),
          SizedBox(
            width: 300,
            child: CustomizableButton(
                text: 'ลงชื่อเข้าใช้งาน',
                backgroundColor: Colors.blue,
                addedHeight: 20,
                callback: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register(),
                      ),
                      (route) => false);
                }),
          )
        ],
      ),
    );
  }
}
