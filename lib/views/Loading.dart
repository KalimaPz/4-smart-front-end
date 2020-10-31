import 'package:eldercare/actions/Fetch.dart';
import 'package:eldercare/views/MainMenu.dart';
import 'package:eldercare/views/Register.dart';
import 'package:eldercare/views/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool finish = false;
  // var lessonData;
  @override
  void initState() {
    // lessonData = Fetch.getData();
    check();
    super.initState();
  }

  void check() {
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        finish = true;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  final String title = "4 Smart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: SafeArea(
          child: Center(
        child: finish == false
            ? Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Text(
                        '$title',
                        style: TextStyle(
                            fontSize: 48,
                            fontFamily: 'FredokaOne',
                            color: Colors.blueAccent),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(50),
                        child: Image.asset(
                          'assets/images/appicon.png',
                          height: 128,
                          width: 128,
                        )),
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: LinearProgressIndicator(
                            minHeight: 20,
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.blue[900]),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Text(
                        'กำลังโหลดข้อมูล...',
                        style: TextStyle(fontSize: 24),
                      ),
                    )
                  ],
                ),
              )
            : SignIn(),
      )),
    );
  }
}
