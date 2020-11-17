import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:parse_json/models/photo.dart';
import 'package:parse_json/models/photo_list.dart';

Future<String> _loadPhotosAsset() async {
  return await rootBundle.loadString('assets/photo.json');
}

Future loadPhotos() async {
  final String photoString = await _loadPhotosAsset();
  var jsonResponse = json.decode(photoString);
  PhotoList photoList =  PhotoList.fromJson(jsonResponse);
  print(photoList.photos[0].id);
}
