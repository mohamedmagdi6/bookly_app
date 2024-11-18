// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i409;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/api_manager.dart' as _i704;
import '../data/data_sources/remote_data_source/programming_books/programming_books_remote_data_source.dart'
    as _i960;
import '../data/data_sources/remote_data_source/programming_books/programming_books_remote_data_source_impl.dart'
    as _i1068;
import '../data/data_sources/remote_data_source/similar_books/similar_books_remote_data_source_impl.dart'
    as _i815;
import '../data/data_sources/remote_data_source/similar_books/similar_books_remoute_data_source.dart'
    as _i1015;
import '../data/repository/programming_books_repo_impl.dart' as _i838;
import '../data/repository/similar_books_repo_impl.dart' as _i422;
import '../domain/repository/programming_books_repo.dart' as _i1059;
import '../domain/repository/similar_books_repo.dart' as _i440;
import '../domain/use_case/get_programming_books_use_case.dart' as _i224;
import '../domain/use_case/similar_books_use_case.dart' as _i21;
import '../features/home/presentation/views/details_view_model/similar_books_view_model.dart'
    as _i729;
import '../features/home/presentation/views/home_view.dart' as _i1031;
import '../features/home/presentation/views/home_view_model/home_view_model.dart'
    as _i626;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i704.ApiManager>(() => _i704.ApiManager());
    gh.factory<_i1031.HomeView>(() => _i1031.HomeView(key: gh<_i409.Key>()));
    gh.factory<_i1015.SimilarBooksRemouteDataSource>(() =>
        _i815.SimilarBooksRemoteDataSourceImpl(
            apiManager: gh<_i704.ApiManager>()));
    gh.factory<_i960.ProgrammingBooksRemoteDataSource>(() =>
        _i1068.ProgrammingBooksRemoteDataSourceImpl(
            apiManager: gh<_i704.ApiManager>()));
    gh.factory<_i440.SimilarBooksRepo>(() => _i422.SimilarBooksRepoImpl(
        remouteDataSource: gh<_i1015.SimilarBooksRemouteDataSource>()));
    gh.factory<_i1059.ProgrammingBooksRepo>(() =>
        _i838.ProgrammingBooksRepoImpl(
            programmingBooksRemoteDataSource:
                gh<_i960.ProgrammingBooksRemoteDataSource>()));
    gh.factory<_i224.GetProgrammingBooksUseCase>(() =>
        _i224.GetProgrammingBooksUseCase(
            programmingBooksRepo: gh<_i1059.ProgrammingBooksRepo>()));
    gh.factory<_i626.HomeViewModel>(() => _i626.HomeViewModel(
        programmingBooksUseCase: gh<_i224.GetProgrammingBooksUseCase>()));
    gh.factory<_i21.SimilarBooksUseCase>(
        () => _i21.SimilarBooksUseCase(repo: gh<_i440.SimilarBooksRepo>()));
    gh.factory<_i729.SimilarBooksViewModel>(() =>
        _i729.SimilarBooksViewModel(useCase: gh<_i21.SimilarBooksUseCase>()));
    return this;
  }
}
