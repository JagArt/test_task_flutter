import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/use_case/base/base_local_use_case.dart';
import 'package:test_task_flutter/domain/use_case/interface/local/set_app_theme_local_storage_use_case_interface.dart';

@Injectable(as: SetAppThemeLocalStorageUseCaseInterface)
class GetAppThemeLocalStorageUseCaseImpl extends BaseLocalUseCase
    implements SetAppThemeLocalStorageUseCaseInterface {
  GetAppThemeLocalStorageUseCaseImpl(super.localRepository);

  @override
  Future<void> call({required ThemeMode appTheme}) async {
    return await localRepository.setAppTheme(appThemeValue: appTheme);
  }
}
