import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/use_case/base/base_local_use_case.dart';
import 'package:test_task_flutter/domain/use_case/interface/local/theme/get_app_theme_local_storage_use_case.dart';

@Injectable(as: GetAppThemeLocalStorageUseCase)
class GetAppThemeLocalStorageUseCaseImpl extends BaseLocalUseCase
    implements GetAppThemeLocalStorageUseCase {
  GetAppThemeLocalStorageUseCaseImpl(super.localRepository);

  @override
  Future<ThemeMode> call() async {
    return await localRepository.getAppTheme();
  }
}
