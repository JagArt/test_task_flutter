part of 'home_bloc.dart';

sealed class HomeNavigation {}

final class HomePostDetailsNavigation extends HomeNavigation {
  final int id;

  HomePostDetailsNavigation({required this.id});
}
