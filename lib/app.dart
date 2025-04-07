import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_flutter/common/di/injector.dart';
import 'package:test_task_flutter/common/navigation/app_router.dart';
import 'package:test_task_flutter/presentation/ui_component/theme/bloc/theme_bloc.dart';

final _appRouter = AppRouter();

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => getIt.get<ThemeBloc>(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: _appRouter.config(),
            themeMode: state.themeMode,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
          );
        },
      ),
    );
  }
}
