class BooksEntity {
  String? kind;
  int? totalItems;
  List<ItemsEntity>? items;
  ErrorEntity? error;

  BooksEntity({this.kind, this.totalItems, this.items, this.error});
}

class ErrorEntity {
  int? code;
  String? message;
  ErrorEntity({this.code, this.message});
}

class ItemsEntity {
  String? kind;
  String? id;
  String? selfLink;
  VolumeInfoEntity? volumeInfo;

  ItemsEntity({
    this.kind,
    this.id,
    this.selfLink,
    this.volumeInfo,
  });
}

class VolumeInfoEntity {
  String? title;
  List<String>? authors;
  String? description;
  int? pageCount;
  List<String>? categories;
  dynamic averageRating;
  dynamic ratingsCount;
  ImageLinksEntity? imageLinks;
  String? subtitle;

  VolumeInfoEntity(
      {this.title,
      this.authors,
      this.description,
      this.pageCount,
      this.categories,
      this.averageRating,
      this.ratingsCount,
      this.imageLinks,
      this.subtitle});
}

class ImageLinksEntity {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinksEntity({this.smallThumbnail, this.thumbnail});
}
