import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/response/api_response.dart';

abstract class GetPostUseCase {
  Future<ApiResponse<Post>> call(int id);
}
