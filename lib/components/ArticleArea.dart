import 'package:eldercare/components/CustomHeader.dart';
import 'package:flutter/material.dart';

class ArticleArea extends StatelessWidget {
  final String topic;
  final Color headerBgColor;
  final Color headerTextColor;
  final Color articleTextColor;
  final double textSize;
  final double addedWidth;
  final double bottomGap;
  final List<Widget> contents;
  const ArticleArea({
    Key key,
    this.contents,
    @required this.topic,
    this.headerBgColor = Colors.blueAccent,
    this.headerTextColor = Colors.white,
    this.articleTextColor = Colors.black,
    this.textSize = 16,
    this.addedWidth = 0,
    this.bottomGap = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width - 25,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            width: 300,
            child: CustomHeader(
              text: '$topic',
              backgroundColor: headerBgColor,
              textSize: textSize,
              textColor: headerTextColor,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 25, left: 10, right: 10),
              child: Column(
                children: contents,
              ))
        ],
      ),
    );
  }
}
