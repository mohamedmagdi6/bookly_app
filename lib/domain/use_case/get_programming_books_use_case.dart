import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:bookly_app/domain/repository/programming_books_repo.dart';
import 'package:dartz/dartz.dart';

class GetProgrammingBooksUseCase {
  ProgrammingBooksRepo programmingBooksRepo;
  GetProgrammingBooksUseCase({required this.programmingBooksRepo});

  Future<Either<ProgrammingBooksEntity, Failure>> invoke() {
    return programmingBooksRepo.getProgrmmingBooks();
  }
}
