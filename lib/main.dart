import 'package:bookly_app/core/resources/color_manager.dart';
import 'package:bookly_app/core/routes/app_routes.dart';
import 'package:bookly_app/di/di.dart';
import 'package:bookly_app/features/home/presentation/views/home_view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  configureDependencies();
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (context) => getIt<HomeViewModel>())],
      child: const BooklyApp()));
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 800),
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppRoutes.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData().copyWith(
            scaffoldBackgroundColor: ColorManager.background,
          ),
        );
      },
    );
  }
}
