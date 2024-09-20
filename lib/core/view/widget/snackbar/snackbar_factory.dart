import 'package:flutter/material.dart';

import '../../../constant/snackbar_type.dart';
import 'custom_snack_bar.dart';

abstract class SnackBarFactory {
  factory SnackBarFactory(SnackBarType? type) => switch (type) {
        SnackBarType.success => _SuccessSnackBar(),
        SnackBarType.error => _ErrorSnackBar(),
        SnackBarType.warning => _WarningSnackBar(),
        _ => _InfoSnackBar(),
      };

  SnackBar build(String message, {SnackBarAction? action});
}

class _SuccessSnackBar implements SnackBarFactory {
  @override
  SnackBar build(String message, {SnackBarAction? action}) {
    return CustomSnackBar(
      message: message,
      backgroundColor: Colors.green,
      action: action,
    );
  }
}

class _ErrorSnackBar implements SnackBarFactory {
  @override
  SnackBar build(String message, {SnackBarAction? action}) {
    return CustomSnackBar(
      message: message,
      backgroundColor: Colors.red,
      action: action,
    );
  }
}

class _WarningSnackBar implements SnackBarFactory {
  @override
  SnackBar build(String message, {SnackBarAction? action}) {
    return CustomSnackBar(
      message: message,
      backgroundColor: Colors.orange,
      action: action,
    );
  }
}

class _InfoSnackBar implements SnackBarFactory {
  @override
  SnackBar build(String message, {SnackBarAction? action}) {
    return CustomSnackBar(
      message: message,
      backgroundColor: Colors.blue,
      action: action,
    );
  }
}
