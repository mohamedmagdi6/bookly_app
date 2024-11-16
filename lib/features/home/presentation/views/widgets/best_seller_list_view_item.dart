import 'package:bookly_app/core/resources/font_manager.dart';
import 'package:bookly_app/core/resources/text_style_manager.dart';
import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/poster_container.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.item,
  });
  final ItemsEntity item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          PosterContainer(
            imagePath: item.volumeInfo!.imageLinks!.smallThumbnail,
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
                child: CustomText(
                  text: item.volumeInfo!.title,
                ),
              ),
              Text(
                item.volumeInfo!.subtitle ?? '',
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
                const BooksRating(
                  rating: 4,
                  ratingsCount: 6,
                )
              ])
            ],
          )
        ],
      ),
    );
  }
}
