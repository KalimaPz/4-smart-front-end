import 'package:eldercare/views/Loading.dart';
import 'package:flutter/material.dart';
void main() => runApp(MainRender());
class MainRender extends StatefulWidget {
  MainRender({Key key}) : super(key: key);
  
  @override
  _MainRenderState createState() => _MainRenderState();
}

class _MainRenderState extends State<MainRender> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Loading(),
    );
  }
}