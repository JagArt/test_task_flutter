import 'package:flutter/material.dart';

abstract class SetAppThemeLocalStorageUseCase {
  Future<void> call({required ThemeMode appTheme});
}
