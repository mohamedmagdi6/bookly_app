import 'package:bookly_app/core/resources/font_manager.dart';
import 'package:bookly_app/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({
    super.key,
    required this.rating,
    required this.ratingsCount,
  });
  final dynamic rating;
  final dynamic ratingsCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: getRegularStyle(color: Colors.white, fontSize: FontSize.s14),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '($ratingsCount)',
          style: getLightStyle(color: Colors.white, fontSize: FontSize.s12),
        )
      ],
    );
  }
}
