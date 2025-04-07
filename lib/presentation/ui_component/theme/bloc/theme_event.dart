part of 'theme_bloc.dart';

sealed class ThemeEvent extends BaseBlocEvent {}

class ThemeInitialEvent extends ThemeEvent {}

class ThemeChangeEvent extends ThemeEvent {}
