import 'package:bookly_app/core/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    this.raduis,
    this.height,
    this.width,
    super.key,
  });
  final double? height;
  final double? width;
  final double? raduis;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 170.h,
      width: width ?? 140.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(raduis ?? 20),
        color: Colors.white,
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AssetsManager.testImage,
          ),
        ),
      ),
    );
  }
}
