import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ReaderWebView extends StatelessWidget {
  final String url;
  final String title;
  const ReaderWebView({Key key, this.url, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      persistentFooterButtons: [
        SizedBox(
            width: 64,
            height: 64,
            child: FlatButton(
              onPressed: () {},
              color: Colors.blue[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(900)),
              child: Icon(
                Icons.volume_up,
                size: 32,
              ),
            ))
      ],
      appBar: AppBar(
        actions: [Text('TEset')],
        title: Text('$title'),
      ),
      url: '$url',
    );
  }
}
