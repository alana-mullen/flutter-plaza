import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar({
    super.key,
    required this.message,
    super.backgroundColor,
    super.action,
  }) : super(content: Text(message), behavior: SnackBarBehavior.floating);

  final String message;
}
