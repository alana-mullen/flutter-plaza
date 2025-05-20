import 'package:flutter/material.dart';

/// A widget that provides a horizontal gap of a specified width.
///
/// The `HorizontalGap` widget can be used to create horizontal spacing in a layout.
/// It can be used as a regular widget or as a sliver in a `CustomScrollView`.
class HorizontalGap extends StatelessWidget {
  /// Creates a `HorizontalGap` with the specified width.
  ///
  /// The `isSliver` parameter determines whether the gap should be used as a sliver.
  const HorizontalGap._internal({required this.width, this.isSliver = false});

  /// The width of the horizontal gap.
  final double width;

  /// Whether the gap should be used as a sliver.
  final bool isSliver;

  /// Creates a `HorizontalGap` that is not a sliver.
  ///
  /// The `width` parameter specifies the width of the gap.
  factory HorizontalGap(final double width) =>
      HorizontalGap._internal(width: width, isSliver: false);

  /// Creates a `HorizontalGap` that is a sliver.
  ///
  /// The `width` parameter specifies the width of the gap.
  factory HorizontalGap.sliver(final double width) =>
      HorizontalGap._internal(width: width, isSliver: true);

  @override
  Widget build(BuildContext context) {
    return isSliver
        ? SliverToBoxAdapter(child: SizedBox(width: width))
        : SizedBox(width: width);
  }
}
