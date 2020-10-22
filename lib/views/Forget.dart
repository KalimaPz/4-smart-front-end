import 'package:eldercare/views/Game/Game.dart';
import 'package:flutter/material.dart';

class Forget extends StatelessWidget {
  const Forget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = 'ไม่ลืม';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('$title'),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [Game()],
        ),
      )),
    );
  }
}
