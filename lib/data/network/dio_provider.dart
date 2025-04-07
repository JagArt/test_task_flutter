import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/common/config/base_config.dart';
import 'package:test_task_flutter/data/network/interceptor/logger_interceptor.dart';

@module
abstract class DioProvider {
  @singleton
  Dio dio(BaseConfig config) => Dio(
    BaseOptions(
      receiveTimeout: Duration(seconds: 60),
      connectTimeout: Duration(seconds: 60),
      sendTimeout: Duration(seconds: 60),
    ),
  )..interceptors.add(LoggerInterceptor());
}
