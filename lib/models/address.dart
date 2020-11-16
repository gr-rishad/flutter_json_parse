class Address {
  final String city;
  final List<String> streets;

  Address({this.city, this.streets});

  factory Address.fromJson(Map<String, dynamic> parsedData) {
    var streetsFromJson = parsedData['streets']; //List<dynamic>
    print(streetsFromJson.runtimeType); //List<dynamic>
    List<String> streetsList =
        streetsFromJson.cast<String>(); //List<String> ['address 1','address 2']
    //  print(streetsList);
    return Address(
      city: parsedData['city'],
      streets: streetsList,
    );
  }
}
