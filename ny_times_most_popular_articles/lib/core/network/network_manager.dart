import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../const/app_constant.dart';

@immutable
final class ProjectNetworkManager {
  ProjectNetworkManager._() {
    _dio = Dio(_myBaseOptions());
    _addInterceptors();
  }
  final String _baseUrl = AppConstant.baseUrl;
  late final Dio _dio;

  static ProjectNetworkManager instance = ProjectNetworkManager._();

  Dio get dio => _dio;

  void _addInterceptors() {
    _dio.interceptors.add(_prettyDioLogger);
  }

  final PrettyDioLogger _prettyDioLogger = PrettyDioLogger(
    error: false,
    compact: false,
  );

  BaseOptions _myBaseOptions() => BaseOptions(
        baseUrl: _baseUrl,
      );
}
