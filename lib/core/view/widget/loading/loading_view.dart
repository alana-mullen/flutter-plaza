import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({
    super.key,
    this.labelText,
    this.labelColor,
    this.indicatorColor,
    this.backgroundColor,
    this.height,
    this.width,
  });

  final String? labelText;
  final Color? labelColor;
  final Color? indicatorColor;
  final Color? backgroundColor;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? Colors.white,
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            labelText ?? '',
            style: TextStyle(
              color: labelColor ?? Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: CircularProgressIndicator.adaptive(
              backgroundColor: indicatorColor ?? Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
