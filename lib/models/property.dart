class Property {
  double width;
  double breadth;

  Property({
    this.width,
    this.breadth,
  });

  factory Property.fromJson(Map<String, dynamic> parsedJson) {
    return Property(
      width: parsedJson['width'],
      breadth: parsedJson['breadth'],
    );
  }
}
