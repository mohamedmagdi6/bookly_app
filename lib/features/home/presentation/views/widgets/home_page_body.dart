import 'package:bookly_app/di/di.dart';
import 'package:bookly_app/features/home/presentation/views/home_view_model/home_states.dart';
import 'package:bookly_app/features/home/presentation/views/home_view_model/home_view_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: BlocProvider(
        create: (context) => getIt<HomeViewModel>()..getProgrammingBooks(),
        child: BlocBuilder<HomeViewModel, HomeStates>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                CustomListView(
                  items: HomeViewModel.get(context).item,
                ),
                SizedBox(
                  height: 50.h,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomText(),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Expanded(
                    child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10.h,
                  ),
                  itemBuilder: (context, index) => BestSellerListViewItem(
                    item: HomeViewModel.get(context).item[index],
                  ),
                  itemCount: HomeViewModel.get(context).item.length,
                ))
              ],
            );
          },
        ),
      ),
    );
  }
}
