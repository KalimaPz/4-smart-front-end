import 'package:eldercare/views/Game/GameItem.dart';
import 'package:flutter/material.dart';

class GamePattern {
  static List<Widget> pattern_1 = [
    // answer is Orange
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/straw.png',
        size: 128,
        name: 'straw',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/pome.png',
        size: 128,
        name: 'pome',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/kiwi.png',
        size: 128,
        name: 'kiwi',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/apple.png',
        size: 128,
        name: 'apple',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/blueberry.png',
        size: 128,
        name: 'blueberry',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/watermelon.png',
        size: 128,
        name: 'water',
      ),
    ),
  ];
  static List<Widget> pattern_2 = [
    // answer is BlueBerry
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/straw.png',
        size: 128,
        name: 'straw',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/pome.png',
        size: 128,
        name: 'pome',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/kiwi.png',
        size: 128,
        name: 'kiwi',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/apple.png',
        size: 128,
        name: 'apple',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/blackberry.png',
        size: 128,
        name: 'blackberry',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/watermelon.png',
        size: 128,
        name: 'water',
      ),
    ),
  ];
  static List<Widget> pattern_3 = [
    // answer is Kiwi
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/straw.png',
        size: 128,
        name: 'straw',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/pome.png',
        size: 128,
        name: 'pome',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/orange.png',
        size: 128,
        name: 'orange',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/apple.png',
        size: 128,
        name: 'apple',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/blueberry.png',
        size: 128,
        name: 'blueberry',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameItem(
        imageUrl: 'assets/images/Done/watermelon.png',
        size: 128,
        name: 'water',
      ),
    ),
  ];

  static List<Widget> listShuffle(List<Widget> pattern) {
    List<Widget> newPattern = pattern;
    newPattern.shuffle();
    return newPattern;
  }
}
