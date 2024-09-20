import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_filex/open_filex.dart';
import 'package:plaza/products/model/product_response.dart';
import 'package:plaza/products/provider/product_detail_provider.dart';

import '../../core/mixin/custom_snackbar_mixin.dart';
import '../provider/download_image_provider.dart';
import 'widget/product_detail_carousel.dart';

part 'widget/product_detail_header.dart';

@RoutePage()
class ProductDetailPage extends ConsumerStatefulWidget {
  const ProductDetailPage({super.key, required this.productId});

  final int productId;

  @override
  ConsumerState<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends ConsumerState<ProductDetailPage>
    with CustomSnackBarMixin {
  @override
  Widget build(BuildContext context) {
    ref.listen(downloadImageProvider, (previousState, currentState) {
      if (currentState.value != null) {
        showSnackBar(
          context,
          message: 'Image downloaded',
          action: SnackBarAction(
            label: 'Open',
            onPressed: () => _handleOpenFile(currentState.value),
          ),
        );
      }
    });

    final product = ref.watch(productDetailProvider(widget.productId));

    if (product is AsyncLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (product is AsyncError) {
      return Center(child: Text(product.error.toString()));
    }

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            <Widget>[
          ProductDetailHeader(
            productId: widget.productId,
          ),
        ],
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '£${product.value?.price}',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                product.value?.description ?? '',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 50),
              ProductDetailCarousel(images: product.value?.images),
            ],
          ),
        ),
      ),
    );
  }

  _handleOpenFile(String? path) {
    debugPrint('Open file: $path');
    try {
      if (path == null) {
        throw Exception('File not found');
      }
      OpenFilex.open(path);
    } catch (ex) {
      debugPrint('Error: $ex');
    }
  }
}
