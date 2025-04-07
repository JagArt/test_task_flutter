import 'package:test_task_flutter/domain/repository/remote_repository.dart';

abstract class BaseRemoteUseCase {
  BaseRemoteUseCase(this.remoteRepository);

  RemoteRepository remoteRepository;
}
