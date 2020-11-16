import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';
import '../models/shape.dart';

Future<String> _loadShapeAsset() async {
  return await rootBundle.loadString('assets/shape.json');
}

Future loadShape() async {
  final jsonString = await _loadShapeAsset();
  var jsonResponse = json.decode(jsonString);
  Shape shape = new Shape.fromJson(jsonResponse);
  print(shape.shapeName);
}
