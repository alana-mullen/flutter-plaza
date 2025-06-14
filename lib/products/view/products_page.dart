import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/view/widget/custom_app_bar.dart';
import '../../core/view/widget/riverpod/sliver_async_value_widget.dart';
import '../../navigation/router/nav_router.gr.dart';
import '../provider/products_provider.dart';
import 'widget/product_list_tile.dart';

@RoutePage()
class ProductsPage extends ConsumerStatefulWidget {
  const ProductsPage({super.key});

  @override
  ConsumerState<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends ConsumerState<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    final products = ref.watch(productsProvider);

    return Scaffold(
      appBar: const CustomAppBar(title: 'Products'),
      body: RefreshIndicator(
        onRefresh: () => ref.read(productsProvider.notifier).fetchProducts,
        child: CustomScrollView(
          slivers: [
            SliverAsyncValueWidget(
              value: products,
              data: (data) => SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return ProductListTile(
                    key: ValueKey(data[index].id),
                    data: data[index],
                    onTileTapped: () =>
                        _handleNavigateToProductDetail(data[index].id ?? 0),
                  );
                }, childCount: data.length),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleNavigateToProductDetail(int productId) {
    debugPrint('Product ID: $productId');
    context.router.push(ProductDetailRoute(productId: productId));
  }
}
