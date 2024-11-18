import 'package:bookly_app/core/errors/failure.dart';

abstract class SimilarBooksStates {}

class SimilarBooksLoadingState extends SimilarBooksStates {}

class SimilarBooksFailureState extends SimilarBooksStates {
  Failure failure;
  SimilarBooksFailureState({required this.failure});
}

class SimilarBooksSuccessState extends SimilarBooksStates {}
