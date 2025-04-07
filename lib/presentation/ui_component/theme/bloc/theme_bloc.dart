import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/use_case/interface/local/theme/get_app_theme_local_storage_use_case.dart';
import 'package:test_task_flutter/domain/use_case/interface/local/theme/set_app_theme_local_storage_use_case.dart';
import 'package:test_task_flutter/presentation/base/bloc/base_bloc_impl.dart';

part 'theme_event.dart';
part 'theme_state.dart';

@injectable
final class ThemeBloc extends BaseBlocImpl<ThemeEvent, ThemeState> {
  ThemeBloc(this._getAppThemeLocalStorageUseCase, this._setAppThemeLocalStorageUseCaseInterface)
    : super(ThemeState()) {
    add(ThemeInitialEvent());
  }

  final GetAppThemeLocalStorageUseCase _getAppThemeLocalStorageUseCase;
  final SetAppThemeLocalStorageUseCase _setAppThemeLocalStorageUseCaseInterface;

  @override
  handleEvent(ThemeEvent event, Emitter<ThemeState> emit) async {
    switch (event) {
      case ThemeInitialEvent():
        await _handleInitialEvent(event, emit);
        break;
      case ThemeChangeEvent():
        await _handleChangeTheme(event, emit);
        break;
    }
  }

  _handleInitialEvent(ThemeInitialEvent event, Emitter<ThemeState> emit) async {
    final currentTheme = await _getAppThemeLocalStorageUseCase();
    emit(state.copyWith(themeMode: currentTheme));
  }

  _handleChangeTheme(ThemeChangeEvent event, Emitter<ThemeState> emit) async {
    final themeMode = _getThemeMode();
    await _setAppThemeLocalStorageUseCaseInterface.call(appTheme: themeMode);
    emit(state.copyWith(themeMode: themeMode));
  }

  ThemeMode _getThemeMode() => state.isLight ? ThemeMode.dark : ThemeMode.light;
}
