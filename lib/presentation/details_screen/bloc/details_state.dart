part of 'details_bloc.dart';

class DetailsState extends BaseBlocState<DetailsState, BaseBlocStatus> {
  final BaseBlocStatus status;
  final Post? post;
  final String? snackBarMessage;

  DetailsState({this.status = BaseBlocStatus.loading, this.post, this.snackBarMessage});

  @override
  DetailsState copyWith({BaseBlocStatus? status, Post? post, String? snackBarMessage}) {
    return DetailsState(
      status: status ?? this.status,
      post: post ?? this.post,
      snackBarMessage: snackBarMessage,
    );
  }

  @override
  List<Object?> get props => [status, post, snackBarMessage];
}
