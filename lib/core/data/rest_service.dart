import 'package:chopper/chopper.dart';
import 'package:plaza/products/model/product_response.dart';
import 'package:plaza/profile/model/user_response.dart';

import '../../categories/model/category_response.dart';

part 'rest_service.chopper.dart';

@ChopperApi()
abstract class RestService extends ChopperService {
  static RestService create([ChopperClient? client]) => _$RestService(client);

  @Get(path: 'products')
  Future<Response<List<ProductResponse>>> getProducts();

  @Get(path: 'products/{id}')
  Future<Response<ProductResponse>> getProductDetail(@Path('id') int id);

  @Get(path: 'categories')
  Future<Response<List<CategoryResponse>>> getCategories();

  @Get(path: 'users/{id}')
  Future<Response<UserResponse>> getUserDetail(@Path('id') int id);
}
