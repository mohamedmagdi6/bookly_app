import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/data/api_constant.dart';
import 'package:bookly_app/data/api_manager.dart';
import 'package:bookly_app/data/data_sources/remote_data_source/programming_books/programming_books_remote_data_source.dart';
import 'package:bookly_app/data/model/programming_books_dto.dart';
import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProgrammingBooksRemoteDataSource)
class ProgrammingBooksRemoteDataSourceImpl
    extends ProgrammingBooksRemoteDataSource {
  ApiManager apiManager;
  ProgrammingBooksRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<Either<BooksEntity, Failure>> getProgrammingBooks() async {
    var response = await apiManager.getData(ApiConstant.booksEndPoint);
    var programmingBooksResponse = BooksDto.fromJson(response.data);
    if (response.statusCode! >= 200 && response.statusCode! <= 300) {
      print(
          ' cheekkkkkks ${programmingBooksResponse.items![0].volumeInfo!.imageLinks}');
      return Left(programmingBooksResponse);
    } else {
      return Right(ServiceFailure(errorMessage: 'ther is error in service'));
    }
  }
}
