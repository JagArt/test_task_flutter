import 'package:flutter/material.dart';

abstract class GetAppThemeLocalStorageUseCase {
  Future<ThemeMode> call();
}
