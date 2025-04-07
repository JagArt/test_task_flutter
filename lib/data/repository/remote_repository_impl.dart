import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/common/config/base_config.dart';
import 'package:test_task_flutter/data/mapper/post_mapper.dart';
import 'package:test_task_flutter/data/network/api_client.dart';
import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/repository/remote_repository.dart';
import 'package:test_task_flutter/domain/response/api_response.dart';

@LazySingleton(as: RemoteRepository)
class RemoteRepositoryImpl extends RemoteRepository {
  final Dio dio;
  final BaseConfig config;
  final ApiClient apiClient;

  RemoteRepositoryImpl({required this.dio, required this.config})
    : apiClient = ApiClient(dio, baseUrl: config.host);

  @override
  Future<ApiResponse<List<Post>>> fetchPosts() async {
    final response = await apiClient.fetchPosts();
    return ApiResponse(
      data: response.map((postModel) => PostMapper().postModelToPost(postModel)).toList(),
    );
  }

  @override
  Future<ApiResponse<Post>> getPost(int id) async {
    final response = await apiClient.getPost(id);
    return ApiResponse(data: PostMapper().postModelToPost(response));
  }
}
