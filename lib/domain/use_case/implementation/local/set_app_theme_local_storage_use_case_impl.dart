import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/use_case/base/base_local_use_case.dart';
import 'package:test_task_flutter/domain/use_case/interface/local/theme/set_app_theme_local_storage_use_case.dart';

@Injectable(as: SetAppThemeLocalStorageUseCase)
class GetAppThemeLocalStorageUseCaseImpl extends BaseLocalUseCase
    implements SetAppThemeLocalStorageUseCase {
  GetAppThemeLocalStorageUseCaseImpl(super.localRepository);

  @override
  Future<void> call({required ThemeMode appTheme}) async {
    return await localRepository.setAppTheme(appThemeValue: appTheme);
  }
}
