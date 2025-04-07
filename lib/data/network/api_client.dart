import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_task_flutter/data/model/post_model.dart';

part 'api_client.g.dart';

final logger = Logger();

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  @GET('posts')
  Future<List<PostModel>> fetchPosts();

  @GET('posts/{id}')
  Future<PostModel> getPost(@Path('id') int id);
}
