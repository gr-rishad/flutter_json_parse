class Page {
  final String page;
  final String perPage;
  final String total;
  final Author author;
  final List<Data> data;

  Page({
    this.page,
    this.perPage,
    this.total,
    this.author,
    this.data,
  });

  factory Page.fromJson(Map<String, dynamic> parsedMap) {
    var list = parsedMap['data'] as List;
    List<Data> dataList = list.map((i) => Data.fromJson(i)).toList();
    return Page(
      page: parsedMap['page'].toString(),
      perPage: parsedMap['per_page'].toString(),
      total: parsedMap['total'].toString(),
      author: Author.fromJson(parsedMap['author']),
      data: dataList,
    );
  }
}

class Author {
  final String firstName;
  final String lastName;

  Author({
    this.firstName,
    this.lastName,
  });

  factory Author.fromJson(Map<String, dynamic> parsedJson) {
    return Author(
      firstName: parsedJson['first_name'],
      lastName: parsedJson['last_name'],
    );
  }
}

class Data {
  final int id;
  final String firstName;
  final String lastName;
  final List<Image> imageList;

  Data({
    this.id,
    this.firstName,
    this.lastName,
    this.imageList,
  });

  factory Data.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['images'] as List;
    List<Image> images = list.map((i) => Image.fromJson(i)).toList();
    return Data(
      id: parsedJson['id'],
      firstName: parsedJson['first_name'],
      imageList: images,
    );
  }
}

class Image {
  final String imageId;
  final String imageName;
  Image({
    this.imageId,
    this.imageName,
  });

  factory Image.fromJson(Map<String, dynamic> parsedJson) {
    return Image(
      imageId: parsedJson['id'].toString(),
      imageName: parsedJson['imageName'],
    );
  }
}
