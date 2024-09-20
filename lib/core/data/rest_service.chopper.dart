// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$RestService extends RestService {
  _$RestService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = RestService;

  @override
  Future<Response<List<ProductResponse>>> getProducts() {
    final Uri $url = Uri.parse('products');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ProductResponse>, ProductResponse>($request);
  }

  @override
  Future<Response<ProductResponse>> getProductDetail(int id) {
    final Uri $url = Uri.parse('products/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ProductResponse, ProductResponse>($request);
  }

  @override
  Future<Response<List<CategoryResponse>>> getCategories() {
    final Uri $url = Uri.parse('categories');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<CategoryResponse>, CategoryResponse>($request);
  }

  @override
  Future<Response<UserResponse>> getUserDetail(int id) {
    final Uri $url = Uri.parse('users/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserResponse, UserResponse>($request);
  }
}
