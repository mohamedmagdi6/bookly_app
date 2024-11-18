import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/data/data_sources/remote_data_source/programming_books/programming_books_remote_data_source.dart';
import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:bookly_app/domain/repository/programming_books_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProgrammingBooksRepo)
class ProgrammingBooksRepoImpl extends ProgrammingBooksRepo {
  ProgrammingBooksRemoteDataSource programmingBooksRemoteDataSource;
  ProgrammingBooksRepoImpl({required this.programmingBooksRemoteDataSource});
  @override
  Future<Either<BooksEntity, Failure>> getProgrmmingBooks() async {
    var respose = await programmingBooksRemoteDataSource.getProgrammingBooks();
    return respose.fold((programmingBooksModel) => Left(programmingBooksModel),
        (error) => Right(error));
  }
}
