import 'package:flutter_tts/flutter_tts.dart';

class TextReader {
  static Future speak(String text) async {
    double volume = 1;
    double pitch = 1.0;
    double rate = 1;
    FlutterTts flutterTts = FlutterTts();
    await flutterTts.setLanguage("th-TH");
    await flutterTts.setVolume(volume);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);

    flutterTts.speak(text);
  }
}
