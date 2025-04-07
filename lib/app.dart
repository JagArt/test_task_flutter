import 'package:flutter/material.dart';
import 'package:test_task_flutter/common/navigation/app_router.dart';

final _appRouter = AppRouter();

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _appRouter.config());
  }
}
