import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ny_times_most_popular_articles/feature/home/cubit/home_cubit.dart';
import 'package:ny_times_most_popular_articles/feature/home_detail/view/home_detail_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text("Sort by Date"),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0.w),
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return IconButton(
                    icon: const Icon(Icons.data_exploration_sharp),
                    onPressed: () {
                      context.read<HomeCubit>().sortListByDate();
                    },
                  );
                },
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              switch (state) {
                case HomeLoading():
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case HomeSortedLoaded():
                  return _MainBody();
                case HomeLoaded():
                  return _MainBody();
                case HomeFailure():
                  return const Center(child: Text("Beklenmedik Bir Hata ile Karşılaşıldı!"));
                default:
              }
              return const Center(child: Text("Beklenmedik Bir Hata ile Karşılaşıldı!"));
            },
          ),
        ),
      ),
    );
  }
}

class _MainBody extends StatelessWidget {
  const _MainBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8.h,
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            final articles = context.watch<HomeCubit>().allArticles;
            return ListView.builder(
              shrinkWrap: true,
              itemCount: context.read<HomeCubit>().allArticles.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeDetailView(itemsDetail: articles[index]),
                      )),
                  child: Card(
                    color: Colors.greenAccent,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          articles[index].media!.isNotEmpty
                              ? Image.network(
                                  articles[index].media?[0].mediaMetadata?[0].url ??
                                      "https://static01.nyt.com/images/2023/07/17/multimedia/17tb-dino-vs-mammal-04-kjtv/17tb-dino-vs-mammal-04-kjtv-threeByTwoSmallAt2X.jpg?format=pjpg&quality=75&auto=webp&disable=upscale",
                                )
                              : const Icon(Icons.hourglass_empty),
                          Text(
                            articles[index].title ?? "",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            articles[index].abstract ?? "",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
