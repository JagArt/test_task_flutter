import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/repository/local_repository.dart';

const String appThemeKey = 'appTheme';
const String postsKey = 'posts';
const String postKey = 'post';

@LazySingleton(as: LocalRepository)
class LocalRepositoryImpl implements LocalRepository {
  final SharedPreferencesAsync _preferencesAsync;

  LocalRepositoryImpl(this._preferencesAsync);

  ThemeMode? _appTheme;

  @override
  Future<ThemeMode> getAppTheme() async {
    if (_appTheme == null) {
      final themeIndex = await _preferencesAsync.getInt(appThemeKey);
      if (themeIndex != null) {
        _appTheme = ThemeMode.values[themeIndex];
      } else {
        _appTheme = ThemeMode.values[0];
      }
    }

    return _appTheme!;
  }

  @override
  Future<void> setAppTheme({required ThemeMode appThemeValue}) async {
    _appTheme = appThemeValue;
    await _preferencesAsync.setInt(appThemeKey, appThemeValue.index);
  }

  @override
  Future<void> setPosts({required List<Post> posts}) async {
    await _preferencesAsync.setStringList(
      postsKey,
      posts.map((post) => jsonEncode(post.toJson())).toList(),
    );
  }

  @override
  Future<List<Post>> getPosts() async {
    return (await _preferencesAsync.getStringList(
          postsKey,
        ))?.map((post) => Post.fromJson(jsonDecode(post))).toList() ??
        [];
  }

  @override
  Future<Post?> getPost(int id) async {
    final post = await _preferencesAsync.getString(_getPostKey(id));
    if (post != null) return jsonDecode(post);
    return null;
  }

  @override
  Future<void> setPost({required Post post}) async {
    await _preferencesAsync.setString(_getPostKey(post.id), jsonEncode(post.toJson()));
  }

  String _getPostKey(int id) => postKey + id.toString();
}
