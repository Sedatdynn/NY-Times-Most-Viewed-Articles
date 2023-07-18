import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_times_most_popular_articles/feature/home/model/home_model.dart';

import '../service/i_home_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeService}) : super(HomeInitial());

  final IHomeService homeService;
  List<Results> allArticles = [];
  List<Results> allSortedArticles = [];

  Future<void> fetchAllArticles() async {
    try {
      emit(HomeLoading(true));
      allArticles = (await homeService.getMostPopularArticles()) ?? [];
      emit(HomeLoading(false));
      emit(HomeLoaded(allArticles));
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }

  // void sortListByDate() {
  //   allSortedArticles = List.from(allArticles);
  //   allSortedArticles.sort((a, b) => a.publishedDate!.compareTo(b.publishedDate!));

  //   emit(HomeSortedLoaded(allSortedArticles));
  // }

  void sortListByDate() {
    List<Results> sortedList = List.from(allArticles);
    bool isAscending = true;

    sortedList.sort((a, b) => a.publishedDate!.compareTo(b.publishedDate!));

    if (isAscending) {
      sortedList = sortedList.reversed.toList();
    }

    allArticles = sortedList;
    isAscending = !isAscending;

    emit(HomeSortedLoaded(allArticles));
  }
}
