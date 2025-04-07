import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/response/api_response.dart';
import 'package:test_task_flutter/domain/use_case/base/base_local_remote_use_case.dart';
import 'package:test_task_flutter/domain/use_case/interface/posts/fetch_posts_use_case.dart';

@Injectable(as: FetchPostsUseCase)
class FetchPostsUseCaseImpl extends BaseLocalRemoteUseCase implements FetchPostsUseCase {
  FetchPostsUseCaseImpl(super.remoteRepositorysuper, super.localRepository);

  @override
  Future<ApiResponse<List<Post>>> call() async {
    final result = await remoteRepository.fetchPosts();
    final posts = result.data;
    if (posts != null) localRepository.setPosts(posts: posts);
    return result;
  }
}
