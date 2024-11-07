import 'package:bookly_app/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton(
      {super.key,
      required this.buttonText,
      required this.backgrounColor,
      required this.textColor,
      required this.borderRadius,
      required this.fontSiz});

  final Color backgrounColor;
  final Color textColor;
  final BorderRadiusGeometry borderRadius;
  final double fontSiz;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          backgroundColor: backgrounColor,
        ),
        onPressed: () {},
        child: Text(
          buttonText,
          style: getSemiBoldStyle(color: textColor, fontSize: fontSiz),
        ),
      ),
    );
  }
}
