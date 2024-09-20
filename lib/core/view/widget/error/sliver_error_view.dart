import 'package:flutter/material.dart';

import 'error_view.dart';

class SliverErrorView extends StatelessWidget {
  const SliverErrorView({
    super.key,
    this.labelText,
    this.errorMessage,
    this.error,
  });

  final String? labelText;
  final String? errorMessage;
  final Object? error;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ErrorView(
        labelText: labelText,
        errorMessage: errorMessage,
        error: error,
      ),
    );
  }
}
