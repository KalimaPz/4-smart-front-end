import 'package:flutter/material.dart';

class FellDown extends StatelessWidget {
  const FellDown({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = 'ไม่ล้ม';
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
