import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:parse_json/complex_nested_structure/image.dart';

Future<String> _loadPageAsset() async {
  return await rootBundle.loadString('assets/page.json');
}

Future loadPage() async {
  var parsedString = await _loadPageAsset();
  var parsedResponse = json.decode(parsedString);
  //print(":::::::" + parsedResponse.toString());
  Page page = new Page.fromJson(parsedResponse);
  print(page.data[1].imageList[0].imageName);
}
