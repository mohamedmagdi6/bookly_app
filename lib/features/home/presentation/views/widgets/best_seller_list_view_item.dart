import 'package:bookly_app/core/resources/font_manager.dart';
import 'package:bookly_app/core/resources/text_style_manager.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/poster_container.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          PosterContainer(
            height: 112.h,
            width: 70.w,
            raduis: 10,
          ),
          SizedBox(
            width: 30.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 180.w,
                child: const CustomText(
                  text: 'Harry Potter and the Goblet of Fire',
                ),
              ),
              Text(
                'sub Title',
                style:
                    getLightStyle(color: Colors.white, fontSize: FontSize.s14),
              ),
              Row(children: [
                Text(
                  '19.99',
                  style:
                      getBoldStyle(color: Colors.white, fontSize: FontSize.s18),
                ),
                SizedBox(
                  width: 80.w,
                ),
                const BooksRating()
              ])
            ],
          )
        ],
      ),
    );
  }
}
