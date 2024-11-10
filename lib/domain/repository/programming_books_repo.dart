import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProgrammingBooksRepo {
  Future<Either<ProgrammingBooksEntity, Failure>> getProgrmmingBooks();
}
