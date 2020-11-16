import 'package:parse_json/models/property.dart';

class Shape {
  String shapeName;
  Property property;

  Shape({
    this.property,
    this.shapeName,
  });

  factory Shape.fromJson(Map<String, dynamic> parsedJson) {
    return Shape(
      shapeName: parsedJson['shape_name'],
      property: Property.fromJson(parsedJson['property']),
    );
  }
}
