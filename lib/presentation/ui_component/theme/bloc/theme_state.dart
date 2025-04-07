part of 'theme_bloc.dart';

final class ThemeState extends BaseBlocState<ThemeState, BaseBlocStatus> {
  ThemeState({this.status = BaseBlocStatus.initial, this.themeMode});

  final BaseBlocStatus status;
  final ThemeMode? themeMode;

  bool get isLight => themeMode == ThemeMode.light;

  @override
  List<Object?> get props => [status, themeMode];

  @override
  ThemeState copyWith({BaseBlocStatus? status, ThemeMode? themeMode}) {
    return ThemeState(status: status ?? this.status, themeMode: themeMode ?? this.themeMode);
  }
}
