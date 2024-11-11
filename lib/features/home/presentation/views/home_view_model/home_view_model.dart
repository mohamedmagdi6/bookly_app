import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:bookly_app/domain/use_case/get_programming_books_use_case.dart';
import 'package:bookly_app/features/home/presentation/views/home_view_model/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewModel extends Cubit<HomeStates> {
  GetProgrammingBooksUseCase programmingBooksUseCase;
  HomeViewModel({required this.programmingBooksUseCase})
      : super(HomeInitState());

  List<ItemsEntity> item = [];

  static HomeViewModel get(context) =>
      BlocProvider.of(context); // function to return object of HomeViewModel

  getProgrammingBooks() async {
    emit(ProgrammingBooksLoadingState());
    var either = await programmingBooksUseCase.invoke();
    either.fold(
      (programmingBooksModel) {
        item = programmingBooksModel.items!;
        emit(ProgrammingBooksSuccessState());
      },
      (error) {
        emit(ProgrammingBooksFailureState(failure: error));
      },
    );
  }
}
