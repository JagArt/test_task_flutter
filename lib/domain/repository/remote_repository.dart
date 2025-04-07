import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/response/api_response.dart';

abstract class RemoteRepository {
  Future<ApiResponse<Post>> getPost(int id);
  Future<ApiResponse<List<Post>>> fetchPosts();
}
