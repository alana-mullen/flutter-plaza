part of '../product_detail_page.dart';

class ProductDetailHeader extends ConsumerWidget {
  const ProductDetailHeader({super.key, required this.productId});

  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ProductResponse? productDetail = ref
        .watch(productDetailProvider(productId).select((value) => value.value));
    const headerSize = 300.0;

    return SliverAppBar(
      actions: [
        PopupMenuButton<String>(
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'download',
              onTap: () => ref
                  .read(downloadImageProvider.notifier)
                  .downloadImage(productDetail?.featuredImage ?? ''),
              child: const Text('Download image'),
            ),
          ],
          onSelected: (String value) {
            debugPrint('Selected: $value');
          },
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          productDetail?.title ?? '',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        background: CachedNetworkImage(
          imageUrl: productDetail?.featuredImage ?? '',
          width: double.infinity,
          height: headerSize,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      expandedHeight: headerSize,
      floating: false,
      pinned: true,
    );
  }
}
