import 'dart:convert';

import 'package:eldercare/config/Api.dart';
import 'package:http/http.dart' as http;

class CreateUser {
  static createUser({String firstName, String lastName, String age}) async {
    print(firstName);
    print(lastName);
    print(age);
    final response = await http.post('${Api.url}user',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          'firstname': firstName,
          'lastname': lastName,
          'age': int.parse(age),
        }));

    print(response.statusCode);
    print(response.body);
  }
}
