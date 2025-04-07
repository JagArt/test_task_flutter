import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_flutter/common/di/injector.dart';
import 'package:test_task_flutter/common/navigation/app_router.gr.dart';
import 'package:test_task_flutter/presentation/home_screen/bloc/home_bloc.dart';
import 'package:test_task_flutter/presentation/home_screen/widget/post_card.dart';
import 'package:test_task_flutter/presentation/ui_component/theme/bloc/theme_bloc.dart';

import '../ui_component/snackbar/snackbar_helper.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => getIt<HomeBloc>(), child: _HomePage());
  }
}

class _HomePage extends StatefulWidget {
  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  @override
  void initState() {
    context.read<HomeBloc>().add(HomeInitEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        final message = state.snackBarMessage;
        if (message != null) {
          _showSnackbar(context, message: message);
        }
        final doNavigation = state.doNavigation;
        if (doNavigation != null) {
          _handleNavigation(doNavigation);
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Test Task Flutter'),
              actions: [
                BlocBuilder<ThemeBloc, ThemeState>(
                  builder: (context, state) {
                    return IconButton(
                      onPressed: () {
                        context.read<ThemeBloc>().add(ThemeChangeEvent());
                      },
                      icon: Icon(state.isLight ? Icons.dark_mode : Icons.light_mode),
                    );
                  },
                ),
              ],
            ),
            body: SafeArea(
              child: Center(
                child:
                    state.status.isLoading
                        ? CircularProgressIndicator()
                        : state.posts.isEmpty
                        ? Text('Постов нету')
                        : ListView.separated(
                          itemCount: state.posts.length,
                          padding: EdgeInsets.all(8),
                          itemBuilder: (context, index) {
                            final post = state.posts[index];
                            return PostCard(
                              post: post,
                              onTap:
                                  () => context.read<HomeBloc>().add(
                                    HomeOpenDetailsEvent(id: post.id),
                                  ),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(height: 8),
                        ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleNavigation(HomeNavigation doNavigation) {
    switch (doNavigation) {
      case HomePostDetailsNavigation():
        context.router.push(DetailsRoute(id: doNavigation.id));
    }
  }

  void _showSnackbar(BuildContext context, {required String message}) {
    SnackbarHelper.showSnackBar(context: context, message: message);
  }
}
