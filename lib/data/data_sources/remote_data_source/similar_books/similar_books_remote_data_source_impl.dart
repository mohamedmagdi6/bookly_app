import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/data/api_constant.dart';
import 'package:bookly_app/data/api_manager.dart';
import 'package:bookly_app/data/data_sources/remote_data_source/similar_books/similar_books_remoute_data_source.dart';
import 'package:bookly_app/data/model/programming_books_dto.dart';
import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SimilarBooksRemouteDataSource)
class SimilarBooksRemoteDataSourceImpl extends SimilarBooksRemouteDataSource {
  SimilarBooksRemoteDataSourceImpl({required this.apiManager});
  ApiManager apiManager;
  @override
  Future<Either<BooksEntity, Failure>> getSimilarBooks() async {
    var response = await apiManager.getData(ApiConstant.semilarEndPoint);
    BooksDto similarBooksModel = BooksDto.fromJson(response.data);
    if (response.statusCode! >= 200 && response.statusCode! <= 300) {
      return Left(similarBooksModel);
    } else {
      return Right(ServiceFailure(errorMessage: 'ther is error in service'));
    }
  }
}
