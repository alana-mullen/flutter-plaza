import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductDetailCarousel extends StatelessWidget {
  const ProductDetailCarousel({super.key, this.images});

  final List<String>? images;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CarouselView(
        shrinkExtent: 200,
        itemExtent: 330,
        children: [
          for (final image in images ?? [])
            CachedNetworkImage(
              imageUrl: image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
        ],
      ),
    );
  }
}
