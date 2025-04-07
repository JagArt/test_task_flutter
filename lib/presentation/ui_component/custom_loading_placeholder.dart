import 'package:flutter/material.dart';

class CustomLoadingPlaceholder extends StatelessWidget {
  const CustomLoadingPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.5),
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
