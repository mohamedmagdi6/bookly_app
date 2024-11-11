import 'package:bookly_app/core/errors/failure.dart';

abstract class HomeStates {}

class HomeInitState extends HomeStates {}

class ProgrammingBooksLoadingState extends HomeStates {}

class ProgrammingBooksFailureState extends HomeStates {
  Failure failure;
  ProgrammingBooksFailureState({required this.failure});
}

class ProgrammingBooksSuccessState extends HomeStates {}
