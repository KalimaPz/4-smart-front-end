import 'package:eldercare/config/Views.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Poll extends StatelessWidget {
  const Poll({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('แบบสำรวจ', style: TextStyle(fontSize: Views.titleSize)),
      ),
      body: WebView(
        initialUrl: 'https://www.google.co.th/',
      ),
    );
  }
}
