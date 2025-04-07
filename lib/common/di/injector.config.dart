// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:test_task_flutter/common/config/base_config.dart' as _i581;
import 'package:test_task_flutter/common/config/main_config.dart' as _i865;
import 'package:test_task_flutter/data/network/dio_provider.dart' as _i831;
import 'package:test_task_flutter/data/repository/remote_repository_impl.dart'
    as _i694;
import 'package:test_task_flutter/domain/repository/remote_repository.dart'
    as _i248;
import 'package:test_task_flutter/domain/use_case/implementation/fetch_posts_use_case_impl.dart'
    as _i318;
import 'package:test_task_flutter/domain/use_case/implementation/get_post_use_case_impl.dart'
    as _i938;
import 'package:test_task_flutter/domain/use_case/interface/fetch_posts_use_case.dart'
    as _i246;
import 'package:test_task_flutter/domain/use_case/interface/get_post_use_case.dart'
    as _i879;
import 'package:test_task_flutter/presentation/details_screen/bloc/details_bloc.dart'
    as _i777;
import 'package:test_task_flutter/presentation/home_screen/bloc/home_bloc.dart'
    as _i169;
import 'package:test_task_flutter/presentation/ui_component/theme/bloc/theme_bloc.dart'
    as _i601;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioProvider = _$DioProvider();
    gh.factory<_i601.ThemeBloc>(() => _i601.ThemeBloc());
    gh.factory<_i581.BaseConfig>(() => _i865.MainConfig());
    gh.singleton<_i361.Dio>(() => dioProvider.dio(gh<_i581.BaseConfig>()));
    gh.lazySingleton<_i248.RemoteRepository>(
      () => _i694.RemoteRepositoryImpl(
        dio: gh<_i361.Dio>(),
        config: gh<_i581.BaseConfig>(),
      ),
    );
    gh.factory<_i246.FetchPostsUseCase>(
      () => _i318.FetchPostsUseCaseImpl(gh<_i248.RemoteRepository>()),
    );
    gh.factory<_i879.GetPostUseCase>(
      () => _i938.FetchPostsUseCaseImpl(gh<_i248.RemoteRepository>()),
    );
    gh.factory<_i169.HomeBloc>(
      () => _i169.HomeBloc(gh<_i246.FetchPostsUseCase>()),
    );
    gh.factory<_i777.DetailsBloc>(
      () => _i777.DetailsBloc(gh<_i879.GetPostUseCase>()),
    );
    return this;
  }
}

class _$DioProvider extends _i831.DioProvider {}
