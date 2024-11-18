import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/data/data_sources/remote_data_source/similar_books/similar_books_remoute_data_source.dart';
import 'package:bookly_app/domain/repository/similar_books_repo.dart';
import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SimilarBooksRepo)
class SimilarBooksRepoImpl extends SimilarBooksRepo {
  SimilarBooksRemouteDataSource remouteDataSource;
  SimilarBooksRepoImpl({required this.remouteDataSource});
  @override
  Future<Either<BooksEntity, Failure>> getSimilarBooks() async {
    var either = await remouteDataSource.getSimilarBooks();
    return either.fold(
      (response) => Left(response),
      (error) => Right(error),
    );
  }
}
