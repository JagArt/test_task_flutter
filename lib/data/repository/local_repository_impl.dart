import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_task_flutter/domain/repository/local_repository.dart';

const String appTheme = 'appTheme';

@LazySingleton(as: LocalRepository)
class LocalRepositoryImpl implements LocalRepository {
  final SharedPreferencesAsync _preferencesAsync;

  LocalRepositoryImpl(this._preferencesAsync);

  ThemeMode? _appTheme;

  @override
  Future<ThemeMode> getAppTheme() async {
    if (_appTheme == null) {
      final themeIndex = await _preferencesAsync.getInt(appTheme);
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
    await _preferencesAsync.setInt(appTheme, appThemeValue.index);
  }
}
