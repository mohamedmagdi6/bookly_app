import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:bookly_app/domain/use_case/similar_books_use_case.dart';
import 'package:bookly_app/features/home/presentation/views/details_view_model/similar_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksViewModel extends Cubit<SimilarBooksStates> {
  SimilarBooksViewModel({required this.useCase})
      : super(SimilarBooksLoadingState());
  SimilarBooksUseCase useCase;
  List<ItemsEntity> similarItems = [];

  getSimilarBooks() async {
    emit(SimilarBooksLoadingState());
    var either = await useCase.invoke();
    either.fold(
      (response) {
        similarItems = response.items!;
        emit(SimilarBooksSuccessState());
      },
      (error) {
        emit(SimilarBooksFailureState(failure: error));
      },
    );
  }
}
