import 'package:flutter/material.dart';

abstract class SetAppThemeLocalStorageUseCaseInterface {
  Future<void> call({required ThemeMode appTheme});
}
