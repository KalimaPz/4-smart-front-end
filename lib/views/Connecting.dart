import 'package:eldercare/components/CustomizableButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Connecting extends StatefulWidget {
  Connecting({Key key}) : super(key: key);

  @override
  _ConnectingState createState() => _ConnectingState();
}

class _ConnectingState extends State<Connecting> {
  bool loading = false;
  final int loadingDelay = 2000;
  final double titleText = 48;
  final double infoTextSize = 28;
  final String title = "4 Smart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
              // decoration: BoxDecoration(border: Border.all()),
              child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  '$title',
                  style: TextStyle(fontSize: titleText),
                ),
              ),
              Container(
                // decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(999)),
                        width: 128,
                        height: 128,
                        child: FaIcon(
                          FontAwesomeIcons.times,
                          size: 62,
                          color: Colors.white,
                        )),
                    Container(
                      padding: EdgeInsets.all(40),
                      child: Column(
                        children: [
                          Text("การเชื่่อมต่อล้มเหลว",
                              style: TextStyle(fontSize: infoTextSize)),
                          Text("กรุณาเชื่่อมต่ออินเทอร์เน็ต",
                              style: TextStyle(fontSize: infoTextSize)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: loading == false
                    ? CustomizableButton(
                        text: 'ลองใหม่',
                        textSize: 28,
                        callback: () {
                          setState(() {
                            loading = !loading;
                          });
                          Future.delayed(Duration(milliseconds: loadingDelay),
                              () {
                            setState(() {
                              loading = !loading;
                            });
                          });
                        },
                        backgroundColor: Colors.green,
                        addedHeight: 20,
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
