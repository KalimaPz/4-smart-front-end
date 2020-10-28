import 'package:eldercare/config/Views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Poll extends StatelessWidget {
  const Poll({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text('แบบประเมินสุขภาพ'),
      ),
      url:
          'https://docs.google.com/forms/d/e/1FAIpQLSdi0iiowr_Z8EXja25Tbris5QoP-NP3WNXLPLlYmEoTn9j9ug/viewform',
    );
  }
}
