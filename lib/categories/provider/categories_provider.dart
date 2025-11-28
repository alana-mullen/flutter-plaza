import 'package:plaza/categories/repository/categories_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/category_response.dart';

part 'categories_provider.g.dart';

@riverpod
class Categories extends _$Categories {
  @override
  Future<List<CategoryResponse>> build() async {
    fetchCategories;

    return [];
  }

  Future<void> get fetchCategories async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => await ref.read(categoriesRepositoryProvider).getCategories(),
    );
  }
}

@riverpod
CategoriesRepository categoriesRepository(Ref ref) => CategoriesRepository();
