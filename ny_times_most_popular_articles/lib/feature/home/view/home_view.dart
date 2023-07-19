import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ny_times_most_popular_articles/feature/home/cubit/home_cubit.dart';
import 'package:ny_times_most_popular_articles/feature/home_detail/view/home_detail_view.dart';
import 'package:ny_times_most_popular_articles/product/const/app_colors.dart';
import 'package:ny_times_most_popular_articles/product/const/app_text.dart';
part '../view/widget/listview_body.dart';
part '../view/widget/sorted_date_icon.dart';
part '../view/widget/error_text.dart';
part '../view/widget/loading_widget.dart';
part '../view/widget/app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const _CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              switch (state) {
                case HomeLoading():
                  return const _LoadingWidget();
                case HomeSortedLoaded():
                  return const _MainBody();
                case HomeLoaded():
                  return const _MainBody();
                case HomeFailure():
                  return const _ErrorTextWidget();
                default:
              }
              return const _ErrorTextWidget();
            },
          ),
        ),
      ),
    );
  }
}
