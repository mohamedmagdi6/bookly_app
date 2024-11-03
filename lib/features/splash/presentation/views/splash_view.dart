import 'dart:async';

import 'package:bookly_app/features/home/presentation/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    timerNavigation();
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/Logo.png'),
      ),
    );
  }

  Timer timerNavigation() {
    return Timer(
      const Duration(seconds: 3),
      () {
        Get.to(() => const HomePage(),
            duration: const Duration(
              milliseconds: 250,
            ),
            transition: Transition.fade);
      },
    );
  }
}
