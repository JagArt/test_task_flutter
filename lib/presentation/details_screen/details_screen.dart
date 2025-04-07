import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_flutter/common/di/injector.dart';
import 'package:test_task_flutter/presentation/details_screen/bloc/details_bloc.dart';
import 'package:test_task_flutter/presentation/details_screen/widget/explicit_animation_widget.dart';
import 'package:test_task_flutter/presentation/details_screen/widget/implicit_animation_widget.dart';
import 'package:test_task_flutter/presentation/ui_component/snackbar/snackbar_helper.dart';

@RoutePage()
class DetailsScreen extends StatelessWidget {
  final int id;

  const DetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => getIt<DetailsBloc>(), child: _DetailsPage(id: id));
  }
}

class _DetailsPage extends StatefulWidget {
  final int id;

  const _DetailsPage({required this.id});

  @override
  State<_DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<_DetailsPage> {
  @override
  void initState() {
    context.read<DetailsBloc>().add(DetailsInitEvent(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailsBloc, DetailsState>(
      listener: (context, state) {
        final snackBarMessage = state.snackBarMessage;
        if (snackBarMessage != null) {
          _showSnackbar(context, message: snackBarMessage);
        }
      },
      builder: (context, state) {
        final post = state.post;
        return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: Center(
              child:
                  state.status.isLoading
                      ? CircularProgressIndicator()
                      : SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                post?.title ?? '',
                                style: TextStyle(
                                  fontSize: 30, //
                                ),
                              ),
                              SizedBox(height: 24),
                              Text(
                                post?.body ?? '',
                                style: TextStyle(
                                  fontSize: 20, //
                                ),
                              ),
                              SizedBox(height: 24),
                              ImplicitAnimationWidget(),
                              SizedBox(height: 24),
                              ExplicitAnimationWidget(),
                            ],
                          ),
                        ),
                      ),
            ),
          ),
        );
      },
    );
  }

  void _showSnackbar(BuildContext context, {required String message}) {
    SnackbarHelper.showSnackBar(context: context, message: message);
  }
}
