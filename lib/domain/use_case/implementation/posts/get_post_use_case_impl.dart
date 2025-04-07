import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/response/api_response.dart';
import 'package:test_task_flutter/domain/use_case/base/base_local_remote_use_case.dart';
import 'package:test_task_flutter/domain/use_case/interface/posts/get_post_use_case.dart';

@Injectable(as: GetPostUseCase)
class FetchPostsUseCaseImpl extends BaseLocalRemoteUseCase implements GetPostUseCase {
  FetchPostsUseCaseImpl(super.remoteRepository, super.localRepository);

  @override
  Future<ApiResponse<Post>> call(int id) async {
    final result = await remoteRepository.getPost(id);
    final post = result.data;
    if (post != null) await localRepository.setPost(post: post);
    return result;
  }
}
