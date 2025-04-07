import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/repository/remote_repository.dart';
import 'package:test_task_flutter/domain/response/api_response.dart';
import 'package:test_task_flutter/domain/use_case/interface/fetch_posts_use_case.dart';

@Injectable(as: FetchPostsUseCase)
class FetchPostsUseCaseImpl implements FetchPostsUseCase {
  final RemoteRepository repository;

  FetchPostsUseCaseImpl(this.repository);

  @override
  Future<ApiResponse<List<Post>>> call() async {
    return await repository.fetchPosts();
  }
}
