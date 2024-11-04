import 'package:bookly_app/core/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsManager.booklyLogo,
            height: 24,
          ),
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 28,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
