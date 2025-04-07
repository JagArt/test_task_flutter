import 'package:test_task_flutter/domain/repository/local_repository.dart';
import 'package:test_task_flutter/domain/repository/remote_repository.dart';

abstract class BaseLocalRemoteUseCase {
  BaseLocalRemoteUseCase(this.localRepository, this.remoteRepository);

  LocalRepository localRepository;
  RemoteRepository remoteRepository;
}
