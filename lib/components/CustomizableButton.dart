import 'package:flutter/material.dart';

class CustomizableButton extends StatelessWidget {
  final String text;
  final double textSize;
  final Color backgroundColor;
  final double addedWidth;
  final double addedHeight;
  final VoidCallback callback;

  final double width = 100;
  final double height = 50;
  final Color fontColor = Colors.white;

  const CustomizableButton({
    Key key,
    @required this.text,
    this.textSize = 24,
    this.backgroundColor,
    this.addedWidth = 0,
    this.addedHeight = 0,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: addedWidth, vertical: addedHeight),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(height / 5)),
        child: Center(
          child: Text(
            '$text',
            style: TextStyle(
                fontSize: textSize,
                color: fontColor,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
