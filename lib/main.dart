import 'package:eldercare/actions/ConnectionCheck.dart';
import 'package:eldercare/views/Connecting.dart';
import 'package:eldercare/views/Loading.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainRender());

class MainRender extends StatefulWidget {
  MainRender({Key key}) : super(key: key);

  @override
  _MainRenderState createState() => _MainRenderState();
}

class _MainRenderState extends State<MainRender> {
  bool isConnected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ConnectionCheck.check().then((result) => result == true
        ? setState(() {
            isConnected = true;
          })
        : setState(() {
            isConnected = false;
          }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Kanit'),
      home: isConnected == true ? Loading() : Connecting(),
    );
  }
}
