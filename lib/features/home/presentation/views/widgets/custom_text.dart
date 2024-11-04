import 'package:bookly_app/core/resources/font_manager.dart';
import 'package:bookly_app/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    this.text,
    super.key,
  });
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'Best Seller',
      style: getSemiBoldStyle(color: Colors.white, fontSize: FontSize.s18),
    );
  }
}
