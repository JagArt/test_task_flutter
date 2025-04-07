import 'package:flutter/material.dart';
import 'package:test_task_flutter/domain/entity/post.dart';

abstract class LocalRepository {
  Future<ThemeMode> getAppTheme();
  Future<void> setAppTheme({required ThemeMode appThemeValue});

  Future<void> setPosts({required List<Post> posts});
  Future<List<Post>> getPosts();

  Future<void> setPost({required Post post});
  Future<Post?> getPost(int id);
}
