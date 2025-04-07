import 'package:test_task_flutter/domain/response/api_error_type.dart';

class ApiError {
  final ApiErrorType? type;
  final int? statusCode;
  final String? message;

  ApiError({this.type, this.statusCode, this.message});
}
