// ignore_for_file: prefer-explicit-parameter-names, prefer-correct-callback-field-name, prefer-typedefs-for-callbacks

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../error/sliver_error_view.dart';
import '../loading/sliver_loading_view.dart';

class SliverAsyncValueWidget<T> extends StatelessWidget {
  const SliverAsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
  });

  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (error, stacktrace) => SliverErrorView(
        errorMessage: error.toString(),
        error: error,
      ),
      loading: () => const SliverLoadingView(
        height: 70,
      ),
    );
  }
}
