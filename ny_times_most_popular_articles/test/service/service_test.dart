import 'package:flutter_test/flutter_test.dart';
import 'package:ny_times_most_popular_articles/core/network/network_manager.dart';
import 'package:ny_times_most_popular_articles/feature/home/cubit/home_cubit.dart';
import 'package:ny_times_most_popular_articles/feature/home/service/home_service.dart';
import 'package:ny_times_most_popular_articles/feature/home/service/i_home_service.dart';

void main() {
  late IHomeService service;
  late HomeCubit cubit;

  setUp(() {
    service = HomeService(ProjectNetworkManager.instance.dio);
    cubit = HomeCubit(homeService: service);
  });
  test('Fetch articles service test', () async {
    final response = await service.getMostPopularArticles();
    expect(response, isNotEmpty);
  });

  test('fetched list length test', () async {
    await cubit.fetchAllArticles();
    final allArticles = cubit.allArticles;
    expect(allArticles.isNotEmpty, true);
  });

  test('Sorted by date test', () async {
    await cubit.fetchAllArticles();

    final newList = [];

    cubit.sortListByDate();
    final allSorted = cubit.allArticles;
    bool isSorted = true;

    for (var element in allSorted) {
      if (element.publishedDate != null) {
        String lastTwoCharacters = element.publishedDate!.substring(element.publishedDate!.length - 2);
        int lastTwoDigits = int.parse(lastTwoCharacters);
        newList.add(lastTwoDigits);
      }
    }
    for (int i = 0; i < newList.length - 1; i++) {
      if (newList[i] > newList[i + 1]) {
        isSorted = false;
        break;
      }
    }

    expect(isSorted, true);
  });
}
