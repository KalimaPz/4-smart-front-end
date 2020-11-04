import 'dart:async';
import 'dart:math';
import 'package:eldercare/components/CustomizableButton.dart';
import 'package:eldercare/views/Game/Answer.dart';
import 'package:eldercare/views/Game/GamePattern.dart';
import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  Game({Key key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  List gamePattern = [
    GamePattern.pattern_1,
    GamePattern.pattern_2,
    GamePattern.pattern_3
  ];
  List game;
  bool ready = true;
  bool disableButton = false;
  Timer counter;
  int pattern;
  Color timeColor = Colors.black87;
  int time = 20;

  @override
  void initState() {
    super.initState();
    patternRand();
  }

  void patternRand() {
    Random random = new Random();
    int rand = random.nextInt(2);
    setState(() {
      pattern = rand;
    });
    print('Game Pattern : $rand');
    setState(() {
      game = gamePattern[rand];
    });
  }

  void createTimer() {
    counter = new Timer.periodic(Duration(milliseconds: 1000), (timer) {
      print('$time');
      if (time != 0) {
        setState(() {
          time--;
        });
        if (time <= 5) {
          setState(() {
            timeColor = Colors.red;
          });
        }
      } else {
        counter.cancel();
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Answer(
                pattern: pattern,
              ),
            ));
      }
    });
  }

  @override
  void dispose() {
    if (counter != null) {
      counter.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('จงหาผลไม้ที่ขาดหาย',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              '$time',
              style: TextStyle(
                  color: timeColor, fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          FittedBox(
                      child: Center(
              child: Wrap(
                children: GamePattern.listShuffle(game),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: CustomizableButton(
                text: 'เริ่มเกม',
                backgroundColor: Colors.blue,
                addedHeight: 10,
                callback: disableButton == false
                    ? () => setState(() {
                          disableButton = true;

                          createTimer();
                        })
                    : null),
          )
        ],
      ),
    );
  }
}
