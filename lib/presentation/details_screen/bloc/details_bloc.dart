import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task_flutter/domain/entity/post.dart';
import 'package:test_task_flutter/domain/use_case/interface/get_post_use_case.dart';
import 'package:test_task_flutter/presentation/base/bloc/base_bloc_impl.dart';

part 'details_event.dart';
part 'details_state.dart';

@injectable
class DetailsBloc extends BaseBlocImpl<DetailsEvent, DetailsState> {
  DetailsBloc(this._getPostUseCase) : super(DetailsState());

  final GetPostUseCase _getPostUseCase;

  @override
  Future<void> handleEvent(DetailsEvent event, Emitter<DetailsState> emit) async {
    switch (event) {
      case DetailsInitEvent():
        await _handleDetailsInitEvent(event, emit);
    }
  }

  Future<void> _handleDetailsInitEvent(DetailsInitEvent event, Emitter<DetailsState> emit) async {
    final result = await _getPostUseCase.call(event.id);
    if (result.isSuccess()) {
      emit(state.copyWith(post: result.data, status: BaseBlocStatus.success));
    } else {
      _emitError(emit, message: 'Ошибка загрузки поста');
    }
  }

  _emitError(Emitter<DetailsState> emit, {required String message}) {
    emit(state.copyWith(status: BaseBlocStatus.failure, snackBarMessage: message));
  }
}
