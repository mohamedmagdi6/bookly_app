import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/data/repository/similar_books_repo_impl.dart';
import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:dartz/dartz.dart';

class SimilarBooksUseCase {
  SimilarBooksRepoImpl repoImpl;
  SimilarBooksUseCase({required this.repoImpl});
  Future<Either<BooksEntity, Failure>> invoke() {
    return repoImpl.getSimilarBooks();
  }
}
