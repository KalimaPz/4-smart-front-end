import 'dart:convert';

import 'package:eldercare/config/Api.dart';
import 'package:eldercare/models/Lesson.dart';
import 'package:http/http.dart' as http;
class Fetch {
  static Future getData() async {
    print('${Api.url}lesson');
    final res = await http.get('http://localhost:5000/api/lesson',);
    print(res.statusCode.toString());
    if(res.statusCode == 200) { // OK
    print(res.body);
         List list = json.decode(res.body);
        return list.map((m) => Lesson.fromJson(m)).toList();
    }
    else {
      throw Exception('Cant Connect API');
    }
  }
}