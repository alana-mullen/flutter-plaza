import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/nav_router.gr.dart';

@RoutePage()
class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        ProductsRoute(),
        CategoriesRoute(),
        UserProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            onTap: tabsRouter.setActiveIndex,
            currentIndex: tabsRouter.activeIndex,
          ),
        );
      },
    );
  }
}
