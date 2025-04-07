import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/presentation/base/bloc/base_bloc_impl.dart';
import 'package:test_task_flutter/presentation/ui_component/theme/theme_colors.dart';

part 'theme_event.dart';
part 'theme_state.dart';

@injectable
final class ThemeBloc extends BaseBlocImpl<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState()) {
    add(ThemeInitialEvent());
  }

  // final GetAppThemeLocalStorageUseCaseInterface _getAppThemeLocalStorageUseCase;

  @override
  handleEvent(ThemeEvent event, Emitter<ThemeState> emit) async {
    switch (event) {
      case ThemeInitialEvent():
        await _handleInitialEvent(event, emit);
        break;
      case ThemeChangeEvent():
        _handleChangeTheme(event, emit);
        break;
    }
  }

  _handleInitialEvent(ThemeInitialEvent event, Emitter<ThemeState> emit) async {
    // final currentTheme = await _getAppThemeLocalStorageUseCase();
    final currentTheme = ThemeMode.dark;
    _changeNavigationBarColor(currentTheme);
    emit(state.copyWith(themeMode: currentTheme));
  }

  _handleChangeTheme(ThemeChangeEvent event, Emitter<ThemeState> emit) {
    final themeMode = state.isLight ? ThemeMode.dark : ThemeMode.light;
    _changeNavigationBarColor(themeMode);
    emit(state.copyWith(themeMode: themeMode));
  }

  _changeNavigationBarColor(ThemeMode themeMode) {
    final isLightTheme = _isLightTheme(themeMode);
    final systemUiOverlayStyle =
        isLightTheme ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark;
    final barBrightness = isLightTheme ? Brightness.light : Brightness.dark;
    final iconBrightness = isLightTheme ? Brightness.dark : Brightness.light;
    if (Platform.isAndroid) {
      final color =
          isLightTheme ? LightThemeColors.colorBackground : DarkThemeColors.colorBackgroundHeader;
      SystemChrome.setSystemUIOverlayStyle(
        systemUiOverlayStyle.copyWith(
          statusBarColor: color,
          statusBarIconBrightness: iconBrightness,
          statusBarBrightness: barBrightness,
          systemNavigationBarColor: color,
          systemNavigationBarIconBrightness: iconBrightness,
        ),
      );
    } else {
      SystemChrome.setSystemUIOverlayStyle(
        systemUiOverlayStyle.copyWith(statusBarBrightness: barBrightness),
      );
    }
  }

  bool _isLightTheme(ThemeMode themeMode) {
    final isSystemLight =
        SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.light;
    return themeMode == ThemeMode.light || (themeMode == ThemeMode.system && isSystemLight);
  }

  bool isCurrentThemeLight() {
    final isSystemLight =
        SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.light;
    return state.themeMode == ThemeMode.light ||
        (state.themeMode == ThemeMode.system && isSystemLight);
  }
}
