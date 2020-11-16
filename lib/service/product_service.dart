import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/product.dart';
import 'dart:async' show Future;

Future<String> _loadProductAsset() async {
  return await rootBundle.loadString('assets/product.json');
}

Future loadProduct() async {
  final parsedString = await _loadProductAsset();
  var parsedResponse = json.decode(parsedString);
  Product product = new Product.formJson(parsedResponse);
  print(product.images[0].imageId);
}
