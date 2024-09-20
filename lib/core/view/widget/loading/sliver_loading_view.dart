import 'package:flutter/material.dart';

import 'loading_view.dart';

class SliverLoadingView extends StatelessWidget {
  const SliverLoadingView({
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
    return SliverToBoxAdapter(
      child: LoadingView(
        labelText: labelText,
        labelColor: labelColor,
        indicatorColor: indicatorColor,
        backgroundColor: backgroundColor,
        height: height,
        width: width,
      ),
    );
  }
}
