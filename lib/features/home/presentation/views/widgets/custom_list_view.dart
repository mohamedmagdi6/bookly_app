import 'package:bookly_app/core/routes/routes_path.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/poster_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(RoutesPath.detailsPage);
                },
                child: const PosterContainer()),
          );
        },
      ),
    );
  }
}
