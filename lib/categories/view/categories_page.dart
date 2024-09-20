import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plaza/navigation/view/widget/category_list_tile.dart';

import '../../core/view/widget/custom_app_bar.dart';
import '../../core/view/widget/riverpod/sliver_async_value_widget.dart';
import '../provider/categories_provider.dart';

@RoutePage()
class CategoriesPage extends ConsumerWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider);

    return Scaffold(
      appBar: const CustomAppBar(title: 'Categories'),
      body: RefreshIndicator(
        onRefresh: () async =>
            ref.read(categoriesProvider.notifier).fetchCategories,
        child: CustomScrollView(
          slivers: [
            SliverAsyncValueWidget(
              value: categories,
              data: (data) => SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return CategoryListTile(
                      key: ValueKey(data[index].id),
                      data: data[index],
                    );
                  },
                  childCount: data.length,
                ),
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
}
