import 'package:flutter/material.dart';

class Meal extends StatelessWidget {
  const Meal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = 'กินข้าวอร่อย';
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
