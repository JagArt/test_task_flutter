import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/response/api_response.dart';
import 'package:test_task_flutter/domain/use_case/base/base_remote_use_case.dart';
import 'package:test_task_flutter/domain/use_case/interface/fetch_posts_use_case.dart';

@Injectable(as: FetchPostsUseCase)
class FetchPostsUseCaseImpl extends BaseRemoteUseCase implements FetchPostsUseCase {
  FetchPostsUseCaseImpl(super.repository);

  @override
  Future<ApiResponse<List<Post>>> call() async {
    return await remoteRepository.fetchPosts();
  }
}
