import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:moc_2023_3/webservices/user.dart';

class WebServices {
  static Future<List<User>> getAllUsers() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      switch (response.statusCode) {
        case 200:
          final List<dynamic> usersJson = json.decode(response.body) as List<dynamic>;
          return usersJson.map((userJson) {
            return User.fromJson(userJson as Map<String, dynamic>);
          }).toList();
        default:
          throw Exception('Failed to load users');
      }
    } catch (error) {
      debugPrint('Error getting all users');
      rethrow;
    }
  }
}
