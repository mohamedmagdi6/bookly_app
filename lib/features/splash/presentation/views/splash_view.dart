import 'dart:async';

import 'package:bookly_app/core/routes/routes_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    timerNavigation(context);
    // timerNavigation();
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/Logo.png'),
      ),
    );
  }

  Timer timerNavigation(BuildContext context) {
    return Timer(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).push(RoutesPath.detailsPage);
      },
    );
  }
}
