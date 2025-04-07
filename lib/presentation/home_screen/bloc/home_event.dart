part of 'home_bloc.dart';

sealed class HomeEvent extends BaseBlocEvent {}

final class HomeInitEvent extends HomeEvent {}

final class HomeOpenDetailsEvent extends HomeEvent {
  final int id;

  HomeOpenDetailsEvent({required this.id});
}
