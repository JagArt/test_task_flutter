import 'package:flutter/material.dart';

class SnackbarHelper {
  static void showSnackBar({required BuildContext context, required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2), //
      ),
    );
  }
}
