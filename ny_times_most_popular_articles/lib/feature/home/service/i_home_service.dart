import 'package:dio/dio.dart';
import 'package:ny_times_most_popular_articles/feature/home/model/home_model.dart';

abstract class IHomeService {
  final Dio dio;
  Future<List<Results>?> getMostPopularArticles();
  IHomeService(this.dio);
}
