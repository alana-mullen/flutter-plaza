// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:plaza/categories/view/categories_page.dart' as _i2;
import 'package:plaza/navigation/view/bottom_navigation_page.dart' as _i1;
import 'package:plaza/products/view/product_detail_page.dart' as _i3;
import 'package:plaza/products/view/products_page.dart' as _i4;
import 'package:plaza/profile/view/user_profile_page.dart' as _i5;

/// generated route for
/// [_i1.BottomNavigationPage]
class BottomNavigationRoute extends _i6.PageRouteInfo<void> {
  const BottomNavigationRoute({List<_i6.PageRouteInfo>? children})
      : super(
          BottomNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.BottomNavigationPage();
    },
  );
}

/// generated route for
/// [_i2.CategoriesPage]
class CategoriesRoute extends _i6.PageRouteInfo<void> {
  const CategoriesRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.CategoriesPage();
    },
  );
}

/// generated route for
/// [_i3.ProductDetailPage]
class ProductDetailRoute extends _i6.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i7.Key? key,
    required int productId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailRouteArgs>();
      return _i3.ProductDetailPage(
        key: args.key,
        productId: args.productId,
      );
    },
  );
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.productId,
  });

  final _i7.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i4.ProductsPage]
class ProductsRoute extends _i6.PageRouteInfo<void> {
  const ProductsRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProductsPage();
    },
  );
}

/// generated route for
/// [_i5.UserProfilePage]
class UserProfileRoute extends _i6.PageRouteInfo<void> {
  const UserProfileRoute({List<_i6.PageRouteInfo>? children})
      : super(
          UserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.UserProfilePage();
    },
  );
}
