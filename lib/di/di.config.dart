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
    as _i31;
import '../data/data_sources/remote_data_source/programming_books/programming_books_remote_data_source_impl.dart'
    as _i327;
import '../data/repository/programming_books_repo_impl.dart' as _i838;
import '../domain/repository/programming_books_repo.dart' as _i1059;
import '../domain/use_case/get_programming_books_use_case.dart' as _i224;
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
    gh.factory<_i31.ProgrammingBooksRemoteDataSource>(() =>
        _i327.ProgrammingBooksRemoteDataSourceImpl(
            apiManager: gh<_i704.ApiManager>()));
    gh.factory<_i1059.ProgrammingBooksRepo>(() =>
        _i838.ProgrammingBooksRepoImpl(
            programmingBooksRemoteDataSource:
                gh<_i31.ProgrammingBooksRemoteDataSource>()));
    gh.factory<_i224.GetProgrammingBooksUseCase>(() =>
        _i224.GetProgrammingBooksUseCase(
            programmingBooksRepo: gh<_i1059.ProgrammingBooksRepo>()));
    gh.factory<_i626.HomeViewModel>(() => _i626.HomeViewModel(
        programmingBooksUseCase: gh<_i224.GetProgrammingBooksUseCase>()));
    return this;
  }
}
