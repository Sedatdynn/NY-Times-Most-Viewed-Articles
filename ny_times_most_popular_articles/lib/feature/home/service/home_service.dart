import 'dart:io';

import 'package:ny_times_most_popular_articles/core/const/app_constant.dart';
import 'package:ny_times_most_popular_articles/feature/home/model/home_model.dart';

import 'i_home_service.dart';

class HomeService extends IHomeService {
  HomeService(super.dio);

  @override
  Future<List<Results>?> getMostPopularArticles() async {
    try {
      final response = await dio.get(AppConstant.getEndPoint);
      if (response.statusCode == HttpStatus.ok) {
        final resData = response.data;
        if (resData is Map<String, dynamic>) {
          return MostViewResponseModel.fromJson(resData).results;
        }
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}
