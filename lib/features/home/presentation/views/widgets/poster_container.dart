import 'package:bookly_app/core/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PosterContainer extends StatelessWidget {
  const PosterContainer({
    this.imagePath,
    this.raduis,
    this.height,
    this.width,
    super.key,
  });
  final double? height;
  final double? width;
  final double? raduis;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 190.h,
      width: width ?? 130.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(raduis ?? 20),
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            imagePath ??
                'http://books.google.com/books/content?id=W8cmAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
          ),
        ),
      ),
    );
  }
}
