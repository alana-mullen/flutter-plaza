import 'package:plaza/products/model/product_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/products_repository.dart';

part 'products_provider.g.dart';

@riverpod
class Products extends _$Products {
  @override
  Future<List<ProductResponse>> build() async {
    fetchProducts;

    return List.empty();
  }

  get fetchProducts async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return Future.value(await ProductsRepository.getProducts());
    });
  }
}
