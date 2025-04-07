import 'package:test_task_flutter/data/model/post_model.dart';
import 'package:test_task_flutter/domain/entity/post.dart';

class PostMapper {
  Post postModelToPost(PostModel postModel) => Post(
    userId: postModel.userId,
    id: postModel.id,
    title: postModel.title,
    body: postModel.body,
  );
}
