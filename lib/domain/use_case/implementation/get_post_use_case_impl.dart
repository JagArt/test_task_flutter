import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/response/api_response.dart';
import 'package:test_task_flutter/domain/use_case/base/base_remote_use_case.dart';
import 'package:test_task_flutter/domain/use_case/interface/get_post_use_case.dart';

@Injectable(as: GetPostUseCase)
class FetchPostsUseCaseImpl extends BaseRemoteUseCase implements GetPostUseCase {
  FetchPostsUseCaseImpl(super.repository);

  @override
  Future<ApiResponse<Post>> call(int id) async {
    return await remoteRepository.getPost(id);
  }
}
