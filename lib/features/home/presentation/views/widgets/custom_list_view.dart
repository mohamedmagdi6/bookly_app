import 'package:bookly_app/core/resources/assets_manager.dart';
import 'package:bookly_app/core/resources/text_style_manager.dart';
import 'package:bookly_app/core/routes/routes_path.dart';
import 'package:bookly_app/features/home/presentation/views/home_view_model/home_states.dart';
import 'package:bookly_app/features/home/presentation/views/home_view_model/home_view_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/poster_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewModel, HomeStates>(
      bloc: HomeViewModel.get(context)..getProgrammingBooks(),
      builder: (context, state) {
        if (state is ProgrammingBooksLoadingState) {
          return Center(
            child: Text(
              'loading',
              style: getBoldStyle(color: Colors.white),
            ),
          );
        } else if (state is ProgrammingBooksFailureState) {
          return Center(
            child: Text('failure', style: getBoldStyle(color: Colors.white)),
          );
        }
        return SizedBox(
          height: 190.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: HomeViewModel.get(context).item.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(RoutesPath.detailsPage);
                    },
                    child: PosterContainer(
                      imagePath: HomeViewModel.get(context)
                          .item[index]
                          .volumeInfo!
                          .imageLinks!
                          .thumbnail,
                    )),
              );
            },
          ),
        );
      },
    );
  }
}
