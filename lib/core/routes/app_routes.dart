import 'package:bookly_app/core/routes/routes_path.dart';
import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: RoutesPath.homePage,
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
          GoRoute(
            path: RoutesPath.detailsPage,
            builder: (BuildContext context, GoRouterState state) {
              return BookDetailsView(
                item: state.extra as ItemsEntity,
              );
            },
          ),
        ],
      ),
    ],
  );
}
