import 'package:flutter/material.dart';

class GameItem extends StatefulWidget {
  final String imageUrl;
  final String name;
  final double size;
  final VoidCallback onPress;
  GameItem({Key key, this.imageUrl, this.name, this.size = 64, this.onPress})
      : super(key: key);

  @override
  _GameItemState createState() => _GameItemState();
}

class _GameItemState extends State<GameItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        padding: EdgeInsets.all(10),
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(300)),
        child: Image.asset(
          widget.imageUrl,
          width: widget.size * 0.75,
          height: widget.size * 0.75,
        ),
      ),
    );
  }
}
