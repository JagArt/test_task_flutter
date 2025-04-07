part of 'details_bloc.dart';

sealed class DetailsEvent extends BaseBlocEvent {}

final class DetailsInitEvent extends DetailsEvent {
  final int id;

  DetailsInitEvent({required this.id});
}
