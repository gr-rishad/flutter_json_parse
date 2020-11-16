import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import '../models/student.dart';

Future<String> _loadStudentAsset() async {
  return await rootBundle.loadString('assets/student.json');
}

Future loadStudent() async {
  String jsonString = await _loadStudentAsset();
  print("+++++++++++++++++++++"+jsonString);
  final jsonResponse = json.decode(jsonString);
  print("---------Json Response----------------" + jsonResponse.toString());
  Student student = new Student.fromJson(jsonResponse);
  print(student);
  print(student.studentScore);
}
