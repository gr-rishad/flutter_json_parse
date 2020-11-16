import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import '../models/address.dart';

Future<String> _loadAddressAsset() async {
  return await rootBundle.loadString('assets/address.json');
}

Future loadAddress() async {
  String loadString = await _loadAddressAsset();
  final jsonResponse = json.decode(loadString);
  Address address = new Address.fromJson(jsonResponse);
  print(address.city);
  print(address.streets);// List<String>  output--> ['address 1','address 2']
}
