import 'package:flutter/material.dart';

class FlatTextButton extends StatelessWidget {
  const FlatTextButton({
    super.key,
    this.buttonText,
    this.onButtonPressed,
    this.textColor,
    this.backgroundColor,
    this.minimumSize,
    this.textStyle,
    this.buttonStyle,
  });

  final String? buttonText;
  final VoidCallback? onButtonPressed;
  final Color? textColor;
  final Color? backgroundColor;
  final Size? minimumSize;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onButtonPressed,
      style: buttonStyle ??
          TextButton.styleFrom(
            textStyle: textStyle,
            minimumSize: minimumSize,
          ),
      child: Text(buttonText ?? ''),
    );
  }
}
