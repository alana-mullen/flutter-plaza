import 'package:auto_route/auto_route.dart';

import 'nav_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen|View,Route',
)
class NavRouter extends RootStackRouter {
  @override
  final routes = [
    AutoRoute(page: BottomNavigationRoute.page, initial: true, children: [
      AutoRoute(page: ProductsRoute.page),
      AutoRoute(page: CategoriesRoute.page),
      AutoRoute(page: UserProfileRoute.page),
    ]),
    AutoRoute(page: ProductDetailRoute.page),
  ];

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
}
