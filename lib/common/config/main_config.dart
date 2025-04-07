import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/common/config/base_config.dart';

@Injectable(as: BaseConfig)
class MainConfig extends BaseConfig {
  @override
  String get host => 'https://jsonplaceholder.typicode.com/';
}
