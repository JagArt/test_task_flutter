import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/repository/remote_repository.dart';
import 'package:test_task_flutter/domain/response/api_response.dart';
import 'package:test_task_flutter/domain/use_case/interface/get_post_use_case.dart';

@Injectable(as: GetPostUseCase)
class FetchPostsUseCaseImpl implements GetPostUseCase {
  final RemoteRepository repository;

  FetchPostsUseCaseImpl(this.repository);

  @override
  Future<ApiResponse<Post>> call(int id) async {
    return await repository.getPost(id);
  }
}
