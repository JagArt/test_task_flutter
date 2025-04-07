import 'package:flutter/material.dart';

abstract class LocalRepository {
  Future<ThemeMode> getAppTheme();
  Future<void> setAppTheme({required ThemeMode appThemeValue});
}
