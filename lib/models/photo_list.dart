import 'package:parse_json/models/photo.dart';

class PhotoList {
  final List<Photo> photos;

  PhotoList({this.photos});

  factory PhotoList.fromJson(List<dynamic> parsedJson) {
    List<Photo> photos = new List<Photo>();
    photos = parsedJson.map((i) => Photo.fromJson(i)).toList();
    return PhotoList(
      photos: photos,
    );
  }
}
