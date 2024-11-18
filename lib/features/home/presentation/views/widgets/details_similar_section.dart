import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/resources/font_manager.dart';
import 'package:bookly_app/core/resources/text_style_manager.dart';
import 'package:bookly_app/di/di.dart';
import 'package:bookly_app/features/home/presentation/views/details_view_model/similar_books_states.dart';
import 'package:bookly_app/features/home/presentation/views/details_view_model/similar_books_view_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/poster_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsSemilarSection extends StatelessWidget {
  const DetailsSemilarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style:
                  getSemiBoldStyle(color: Colors.white, fontSize: FontSize.s18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BlocProvider(
            create: (context) =>
                getIt<SimilarBooksViewModel>()..getSimilarBooks(),
            child: BlocBuilder<SimilarBooksViewModel, SimilarBooksStates>(
              builder: (context, state) {
                return SizedBox(
                  height: 112.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: PosterContainer(
                          // imagePath: SimilarBooksViewModel.get(context)
                          //     .similarItems[index]
                          //     .volumeInfo!
                          //     .imageLinks!
                          //     .thumbnail!,
                          height: 112.h,
                          width: 70.w,
                          raduis: 10,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
