import 'package:flutter/material.dart';

import '../../../data/app_exception.dart';
import '../button/flat_text_button.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    this.labelText,
    this.errorMessage,
    this.error,
    this.onRetryButtonPressed,
  });

  final String? labelText;
  final String? errorMessage;
  final Object? error;
  final VoidCallback? onRetryButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(labelText ?? ''),
        switch (error.runtimeType) {
          const (BadGatewayException) ||
          const (BadRequestException) ||
          const (InternalServerErrorException) ||
          const (UnauthorisedException) =>
            Text('Exception: ${error.runtimeType}'),
          _ => Text(errorMessage ?? 'Error'),
        },
        Row(
          children: [
            FlatTextButton(
              buttonText: 'Retry',
              onButtonPressed: onRetryButtonPressed,
            ),
          ],
        ),
      ],
    );
  }
}
