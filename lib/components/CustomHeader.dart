import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final double textSize;
  final double addWidth;
  final double addHeight;
  final Color textColor;
  final MainAxisAlignment mainAxisAlignment;
  final double height = 50;

  const CustomHeader(
      {Key key,
      this.backgroundColor = Colors.blueAccent,
      this.text,
      this.textSize = 16,
      this.addWidth = 0,
      this.addHeight = 0,
      this.textColor = Colors.white,
      this.mainAxisAlignment = MainAxisAlignment.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(999)),
      height: height,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            Text('$text',
                style: TextStyle(color: textColor, fontSize: textSize))
          ],
        ),
      ),
    );
  }
}
