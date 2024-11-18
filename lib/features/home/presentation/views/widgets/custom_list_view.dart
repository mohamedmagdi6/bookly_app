import 'package:bookly_app/domain/entities/programming_books_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/poster_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListView extends StatelessWidget {
  final List<ItemsEntity> items;
  const CustomListView({
    required this.items,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PosterContainer(
              imagePath: items[index].volumeInfo!.imageLinks!.thumbnail,
            ),
          );
        },
      ),
    );
  }
}
