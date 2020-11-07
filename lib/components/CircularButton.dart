import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final String subtitle;
  final VoidCallback callback;
  final double size;
  final double fontSize;

  final double textVerticalGap = 10;
  const CircularButton({
    Key key,
    @required this.icon,
    this.backgroundColor,
    @required this.iconColor,
    @required this.subtitle,
    @required this.callback,
    this.size,
    this.fontSize = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        // decoration: BoxDecoration(color: Colors.blue),
        width: size * 2,
        height: size * 2,
        // decoration: BoxDecoration(border: Border.all()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(999)),
              child: Center(
                child: Container(
                    child: Icon(
                  icon,
                  size: size / 1.5,
                  color: iconColor,
                )),
              ),
            ),
            FittedBox(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: textVerticalGap),
                child: Center(
                  child: Text(
                    '$subtitle',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: fontSize),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
