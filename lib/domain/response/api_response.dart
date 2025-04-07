import 'package:test_task_flutter/domain/response/api_error.dart';

class ApiResponse<T> {
  final T? data;
  final ApiError? error;

  ApiResponse({this.data, this.error});

  bool isSuccess() => data != null && error == null;
}

class EmptyResponse {}
