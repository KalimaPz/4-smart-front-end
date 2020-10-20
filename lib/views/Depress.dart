import 'package:flutter/material.dart';

class Depress extends StatelessWidget {
  const Depress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = 'ซึมเศร้า';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('$title'),
      ),
      body: SafeArea(
          child: Container(
        child: Text('$title'),
      )),
    );
  }
}
