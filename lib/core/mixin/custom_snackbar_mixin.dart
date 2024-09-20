import 'package:flutter/material.dart';

import '../constant/snackbar_type.dart';
import '../view/widget/snackbar/snackbar_factory.dart';

mixin CustomSnackBarMixin {
  void showSnackBar(
    BuildContext context, {
    String? message,
    SnackBarType? type,
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBarFactory(type).build(message ?? '', action: action),
    );
  }
}
