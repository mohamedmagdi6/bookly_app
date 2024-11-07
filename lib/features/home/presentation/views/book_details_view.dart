import 'package:bookly_app/core/resources/font_manager.dart';
import 'package:bookly_app/core/resources/text_style_manager.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/details_button_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/details_similar_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/poster_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const BookDetailsViewAppBar(),
              PosterContainer(
                height: 234.h,
                width: 162.w,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'HARRY POTTER',
                style:
                    getBoldStyle(color: Colors.white, fontSize: FontSize.s24),
              ),
              const SizedBox(
                height: 6,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  'J.K. ROWLING',
                  style: getMediumStyle(
                    color: Colors.white,
                    fontSize: FontSize.s18,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const BooksRating(),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: DetailsButtonSection(),
              ),
              const SizedBox(
                height: 50,
              ),
              const DetailsSemilarSection(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
