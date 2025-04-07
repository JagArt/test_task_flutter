import 'package:flutter/material.dart';
import 'package:test_task_flutter/app.dart';
import 'package:test_task_flutter/common/config/app_config.dart';
import 'package:test_task_flutter/common/config/main_config.dart';
import 'package:test_task_flutter/common/di/injector.dart';

void main() {
  AppConfig(config: MainConfig());
  configureDependencies();
  runApp(const Application());
}
