import 'package:flutter/material.dart';

/// A widget that provides a vertical gap of a specified height.
///
/// The `VerticalGap` widget can be used to create vertical spacing in a layout.
/// It can be used as a regular widget or as a sliver in a `CustomScrollView`.
class VerticalGap extends StatelessWidget {
  /// Creates a `VerticalGap` with the specified height.
  ///
  /// The `isSliver` parameter determines whether the gap should be used as a sliver.
  const VerticalGap._internal({required this.height, this.isSliver = false});

  /// The height of the vertical gap.
  final double height;

  /// Whether the gap should be used as a sliver.
  final bool isSliver;

  /// Creates a `VerticalGap` that is not a sliver.
  ///
  /// The `height` parameter specifies the height of the gap.
  factory VerticalGap(final double height) =>
      VerticalGap._internal(height: height, isSliver: false);

  /// Creates a `VerticalGap` that is a sliver.
  ///
  /// The `height` parameter specifies the height of the gap.
  factory VerticalGap.sliver(final double height) =>
      VerticalGap._internal(height: height, isSliver: true);

  @override
  Widget build(BuildContext context) {
    return isSliver
        ? SliverToBoxAdapter(child: SizedBox(height: height))
        : SizedBox(height: height);
  }
}
