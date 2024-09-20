import 'package:plaza/products/model/product_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/product_detail_repository.dart';

part 'product_detail_provider.g.dart';

@riverpod
class ProductDetail extends _$ProductDetail {
  @override
  Future<ProductResponse?> build(int productId) async {
    fetchProductDetail;

    return null;
  }

  get fetchProductDetail async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return Future.value(
        await ProductDetailRepository.getProductDetail(productId),
      );
    });
  }
}
