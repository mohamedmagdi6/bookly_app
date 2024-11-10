class ProgrammingBooksEntity {
  String? kind;
  int? totalItems;
  List<ItemsEntity>? items;

  ProgrammingBooksEntity({this.kind, this.totalItems, this.items});
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
  int? averageRating;
  int? ratingsCount;
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
