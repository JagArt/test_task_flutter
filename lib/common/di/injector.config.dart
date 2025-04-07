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
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:test_task_flutter/common/config/base_config.dart' as _i581;
import 'package:test_task_flutter/common/config/main_config.dart' as _i865;
import 'package:test_task_flutter/data/local/shared_preference_provider.dart'
    as _i379;
import 'package:test_task_flutter/data/network/dio_provider.dart' as _i831;
import 'package:test_task_flutter/data/repository/local_repository_impl.dart'
    as _i125;
import 'package:test_task_flutter/data/repository/remote_repository_impl.dart'
    as _i694;
import 'package:test_task_flutter/domain/repository/local_repository.dart'
    as _i43;
import 'package:test_task_flutter/domain/repository/remote_repository.dart'
    as _i248;
import 'package:test_task_flutter/domain/use_case/implementation/local/get_app_theme_local_storage_use_case_impl.dart'
    as _i959;
import 'package:test_task_flutter/domain/use_case/implementation/local/set_app_theme_local_storage_use_case_impl.dart'
    as _i289;
import 'package:test_task_flutter/domain/use_case/implementation/posts/fetch_posts_use_case_impl.dart'
    as _i332;
import 'package:test_task_flutter/domain/use_case/implementation/posts/get_post_use_case_impl.dart'
    as _i639;
import 'package:test_task_flutter/domain/use_case/interface/local/theme/get_app_theme_local_storage_use_case.dart'
    as _i1027;
import 'package:test_task_flutter/domain/use_case/interface/local/theme/set_app_theme_local_storage_use_case.dart'
    as _i416;
import 'package:test_task_flutter/domain/use_case/interface/posts/fetch_posts_use_case.dart'
    as _i780;
import 'package:test_task_flutter/domain/use_case/interface/posts/get_post_use_case.dart'
    as _i430;
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
    final sharedPreferenceProvider = _$SharedPreferenceProvider();
    final dioProvider = _$DioProvider();
    gh.singletonAsync<_i460.SharedPreferences>(
      () => sharedPreferenceProvider.sharedPreferences(),
    );
    gh.singleton<_i460.SharedPreferencesAsync>(
      () => sharedPreferenceProvider.sharedPreferencesAsync(),
    );
    gh.factory<_i581.BaseConfig>(() => _i865.MainConfig());
    gh.singleton<_i361.Dio>(() => dioProvider.dio(gh<_i581.BaseConfig>()));
    gh.lazySingleton<_i43.LocalRepository>(
      () => _i125.LocalRepositoryImpl(gh<_i460.SharedPreferencesAsync>()),
    );
    gh.factory<_i416.SetAppThemeLocalStorageUseCase>(
      () =>
          _i289.GetAppThemeLocalStorageUseCaseImpl(gh<_i43.LocalRepository>()),
    );
    gh.factory<_i1027.GetAppThemeLocalStorageUseCase>(
      () =>
          _i959.GetAppThemeLocalStorageUseCaseImpl(gh<_i43.LocalRepository>()),
    );
    gh.factory<_i601.ThemeBloc>(
      () => _i601.ThemeBloc(
        gh<_i1027.GetAppThemeLocalStorageUseCase>(),
        gh<_i416.SetAppThemeLocalStorageUseCase>(),
      ),
    );
    gh.lazySingleton<_i248.RemoteRepository>(
      () => _i694.RemoteRepositoryImpl(
        dio: gh<_i361.Dio>(),
        config: gh<_i581.BaseConfig>(),
      ),
    );
    gh.factory<_i430.GetPostUseCase>(
      () => _i639.FetchPostsUseCaseImpl(
        gh<_i43.LocalRepository>(),
        gh<_i248.RemoteRepository>(),
      ),
    );
    gh.factory<_i777.DetailsBloc>(
      () => _i777.DetailsBloc(gh<_i430.GetPostUseCase>()),
    );
    gh.factory<_i780.FetchPostsUseCase>(
      () => _i332.FetchPostsUseCaseImpl(
        gh<_i43.LocalRepository>(),
        gh<_i248.RemoteRepository>(),
      ),
    );
    gh.factory<_i169.HomeBloc>(
      () => _i169.HomeBloc(gh<_i780.FetchPostsUseCase>()),
    );
    return this;
  }
}

class _$SharedPreferenceProvider extends _i379.SharedPreferenceProvider {}

class _$DioProvider extends _i831.DioProvider {}
