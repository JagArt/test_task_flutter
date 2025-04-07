import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/use_case/interface/fetch_posts_use_case.dart';
import 'package:test_task_flutter/presentation/base/bloc/base_bloc_impl.dart';

part 'home_event.dart';
part 'home_navigation.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends BaseBlocImpl<HomeEvent, HomeState> {
  HomeBloc(this._fetchPostsUseCase) : super(HomeState());

  final FetchPostsUseCase _fetchPostsUseCase;

  @override
  Future<void> handleEvent(HomeEvent event, Emitter<HomeState> emit) async {
    switch (event) {
      case HomeInitEvent():
        await _handleHomeInitEvent(event, emit);
      case HomeOpenDetailsEvent():
        _handleHomeOpenDetailsEvent(event, emit);
    }
  }

  Future<void> _handleHomeInitEvent(HomeInitEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: BaseBlocStatus.loading));
    final result = await _fetchPostsUseCase.call();
    if (result.isSuccess()) {
      emit(state.copyWith(posts: result.data, status: BaseBlocStatus.success));
    } else {
      _emitError(emit, 'Ошибка загрузки постов');
    }
  }

  void _handleHomeOpenDetailsEvent(HomeOpenDetailsEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(doNavigator: HomePostDetailsNavigation(id: event.id)));
  }

  _emitError(Emitter<HomeState> emit, String message) {
    emit(state.copyWith(status: BaseBlocStatus.failure, snackBarMessage: message));
  }
}
