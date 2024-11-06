import 'package:bookly_app/core/resources/font_manager.dart';
import 'package:bookly_app/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99',
          style: getBoldStyle(color: Colors.white, fontSize: FontSize.s18),
        ),
        SizedBox(
          width: 80.w,
        ),
        const Icon(
          Icons.star_rounded,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: getRegularStyle(color: Colors.white, fontSize: FontSize.s14),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '(2390)',
          style: getLightStyle(color: Colors.white, fontSize: FontSize.s12),
        )
      ],
    );
  }
}
