import 'package:bookly_app/domain/entities/programming_books_entity.dart';

class BooksDto extends BooksEntity {
  BooksDto({super.kind, super.totalItems, super.items, super.error});

  BooksDto.fromJson(Map<String, dynamic> json) {
    error = json['error'] == null ? null : ErrorDto.fromJson(json['error']);
    kind = json['kind'];
    totalItems = json['totalItems'];
    if (json['items'] != null) {
      items = <ItemsDto>[];
      json['items'].forEach((v) {
        items!.add(ItemsDto.fromJson(v));
      });
    }
  }
}

class ErrorDto extends ErrorEntity {
  ErrorDto({super.code, super.message});
  ErrorDto.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
  }
}

class ItemsDto extends ItemsEntity {
  ItemsDto({
    super.kind,
    super.id,
    super.selfLink,
    super.volumeInfo,
  });

  ItemsDto.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    id = json['id'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfoDto.fromJson(json['volumeInfo'])
        : null;
  }
}

class VolumeInfoDto extends VolumeInfoEntity {
  VolumeInfoDto(
      {super.title,
      super.authors,
      super.description,
      super.pageCount,
      super.categories,
      super.averageRating,
      super.ratingsCount,
      super.imageLinks,
      super.subtitle});

  VolumeInfoDto.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    authors = json['authors'].cast<String>();
    ratingsCount = json['ratingsCount'];
    averageRating = json['averageRating'];
    description = json['description'];
    imageLinks = json['imageLinks'] != null
        ? ImageLinksDto.fromJson(json['imageLinks'])
        : null;
  }
}

class ImageLinksDto extends ImageLinksEntity {
  ImageLinksDto({super.smallThumbnail, super.thumbnail});

  ImageLinksDto.fromJson(Map<String, dynamic> json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }
}
