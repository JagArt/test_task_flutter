import 'package:test_task_flutter/domain/repository/local_repository.dart';

abstract class BaseLocalUseCase {
  BaseLocalUseCase(this.localRepository);

  LocalRepository localRepository;
}
