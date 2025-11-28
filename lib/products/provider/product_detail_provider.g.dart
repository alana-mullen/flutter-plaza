// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductDetail)
const productDetailProvider = ProductDetailFamily._();

final class ProductDetailProvider
    extends $AsyncNotifierProvider<ProductDetail, ProductResponse?> {
  const ProductDetailProvider._({
    required ProductDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'productDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productDetailHash();

  @override
  String toString() {
    return r'productDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ProductDetail create() => ProductDetail();

  @override
  bool operator ==(Object other) {
    return other is ProductDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productDetailHash() => r'a7bb5a1b6643187ae33a98d7af817374ceadc4ad';

final class ProductDetailFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductDetail,
          AsyncValue<ProductResponse?>,
          ProductResponse?,
          FutureOr<ProductResponse?>,
          int
        > {
  const ProductDetailFamily._()
    : super(
        retry: null,
        name: r'productDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductDetailProvider call(int productId) =>
      ProductDetailProvider._(argument: productId, from: this);

  @override
  String toString() => r'productDetailProvider';
}

abstract class _$ProductDetail extends $AsyncNotifier<ProductResponse?> {
  late final _$args = ref.$arg as int;
  int get productId => _$args;

  FutureOr<ProductResponse?> build(int productId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<ProductResponse?>, ProductResponse?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProductResponse?>, ProductResponse?>,
              AsyncValue<ProductResponse?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(productDetailRepository)
const productDetailRepositoryProvider = ProductDetailRepositoryProvider._();

final class ProductDetailRepositoryProvider
    extends
        $FunctionalProvider<
          ProductDetailRepository,
          ProductDetailRepository,
          ProductDetailRepository
        >
    with $Provider<ProductDetailRepository> {
  const ProductDetailRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productDetailRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productDetailRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProductDetailRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductDetailRepository create(Ref ref) {
    return productDetailRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductDetailRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductDetailRepository>(value),
    );
  }
}

String _$productDetailRepositoryHash() =>
    r'2b87ccb27fae13b81c724e68dc0105ed285049c4';
