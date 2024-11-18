import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:bookly_app/domain/repository/similar_books_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class SimilarBooksUseCase {
  SimilarBooksRepo repo;
  SimilarBooksUseCase({required this.repo});
  Future<Either<BooksEntity, Failure>> invoke() {
    return repo.getSimilarBooks();
  }
}
