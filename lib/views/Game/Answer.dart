import 'package:eldercare/views/Game/Correct.dart';
import 'package:eldercare/views/Game/GameItem.dart';
import 'package:eldercare/views/Game/Wrong.dart';
import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final int pattern;
  Answer({Key key, this.pattern}) : super(key: key);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  void goWrong() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => Wrong(),
        ),
        (route) => false);
  }

  void goCorrect() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => Correct(),
        ),
        (route) => false);
  }

  List<Widget> answer1;
  List<Widget> answer2;
  List<Widget> answer3;
  @override
  void initState() {
    super.initState();
    answer1 = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/straw.png',
          size: 128,
          name: 'straw',
          onPress: () => goWrong(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/orange.png',
          size: 128,
          name: 'orange',
          onPress: () => goCorrect(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/watermelon.png',
          size: 128,
          name: 'melon',
          onPress: () => goWrong(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/kiwi.png',
          size: 128,
          name: 'straw',
          onPress: () => goWrong(),
        ),
      ),
    ];
    answer2 = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/blueberry.png',
          size: 128,
          name: 'blue',
          onPress: () => goCorrect(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/apple.png',
          size: 128,
          name: 'apple',
          onPress: () => goWrong(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/kiwi.png',
          size: 128,
          name: 'kiwi',
          onPress: () => goWrong(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/watermelon.png',
          size: 128,
          name: 'melon',
          onPress: () => goWrong(),
        ),
      ),
    ];
    answer3 = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/blueberry.png',
          size: 128,
          name: 'blue',
          onPress: () => goWrong(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/apple.png',
          size: 128,
          name: 'apple',
          onPress: () => goWrong(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/kiwi.png',
          size: 128,
          name: 'kiwi',
          onPress: () => goCorrect(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameItem(
          imageUrl: 'assets/images/Done/watermelon.png',
          size: 128,
          name: 'melon',
          onPress: () => goWrong(),
        ),
      ),
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('answer : ' + widget.pattern.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text('สิ่งที่หายไป'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Wrap(
                  children: answerRender(widget.pattern),
                ),
              )
            ],
          ),
        ));
  }

  List<Widget> answerRender(int pattern) {
    switch (pattern) {
      case 0:
        return answer1;
        break;
      case 1:
        return answer2;
        break;
      case 2:
        return answer3;
        break;
      default:
        print('No Such Case');
        return null;
        break;
    }
  }
}
