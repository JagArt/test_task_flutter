part of 'home_bloc.dart';

class HomeState extends BaseBlocState<HomeState, BaseBlocStatus> {
  final BaseBlocStatus status;
  final List<Post> posts;
  final HomeNavigation? doNavigation;
  final String? snackBarMessage;

  HomeState({
    this.status = BaseBlocStatus.loading,
    this.posts = const [],
    this.doNavigation,
    this.snackBarMessage,
  });

  @override
  HomeState copyWith({
    BaseBlocStatus? status,
    List<Post>? posts,
    HomeNavigation? doNavigator,
    String? snackBarMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      doNavigation: doNavigator,
      snackBarMessage: snackBarMessage,
    );
  }

  @override
  List<Object?> get props => [status, posts, doNavigation, snackBarMessage];
}
