import 'dart:convert';

import 'package:eldercare/config/Api.dart';
import 'package:eldercare/models/Lesson.dart';
import 'package:http/http.dart' as http;

class Fetch {
  static Future getData() async {
    final res = await http.get(
      '${Api.url}lesson',
    );
    print(res.statusCode.toString());
    if (res.statusCode == 200) {
      print(res.body);
      List list = json.decode(res.body);
      return list.map((m) => Lesson.fromJson(m)).toList();
    } else {
      throw Exception('Cant Connect API');
    }
  }
}
