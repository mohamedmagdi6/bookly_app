import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/data/api_constant.dart';
import 'package:bookly_app/data/api_manager.dart';
import 'package:bookly_app/data/data_sources/remote_data_source/programming_books_remote_data_source.dart';
import 'package:bookly_app/data/model/programming_books_dto.dart';
import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:dartz/dartz.dart';

class ProgrammingBooksRemoteDataSourceImpl
    extends ProgrammingBooksRemoteDataSource {
  ApiManager apiManager;
  ProgrammingBooksRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<Either<ProgrammingBooksEntity, Failure>> getProgrammingBooks() async {
    var response = await apiManager.getData(ApiConstant.booksEndPoint);
    var programmingBooksResponse = ProgrammingBooksDto.fromJson(response.data);
    if (response.statusCode! >= 200 && response.statusCode! <= 300) {
      return Left(programmingBooksResponse);
    } else {
      return Right(ServiceFailure(errorMessage: 'ther is error in service'));
    }
  }
}
