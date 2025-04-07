import 'package:flutter/material.dart';

abstract class GetAppThemeLocalStorageUseCaseInterface {
  Future<ThemeMode> call();
}
