// ignore_for_file: prefer-explicit-parameter-names, prefer-correct-callback-field-name, prefer-typedefs-for-callbacks

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../error/error_view.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
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
      error: (error, stacktrace) => ErrorView(
        errorMessage: error.toString(),
        error: error,
      ),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
