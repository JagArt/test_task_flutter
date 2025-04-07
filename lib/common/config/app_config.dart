import 'base_config.dart';

class AppConfig {
  final BaseConfig config;

  AppConfig._internal(this.config);

  static late AppConfig _instance;

  static AppConfig get instance {
    return _instance;
  }

  factory AppConfig({required BaseConfig config}) {
    _instance = AppConfig._internal(config);

    return _instance;
  }
}
