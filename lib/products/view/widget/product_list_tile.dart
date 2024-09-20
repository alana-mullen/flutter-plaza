import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:plaza/products/model/product_response.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({super.key, this.data, this.onTileTapped});

  final ProductResponse? data;
  final VoidCallback? onTileTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTileTapped,
      child: Card(
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(children: [
          Expanded(
            child: CachedNetworkImage(
              imageUrl: data?.featuredImage ?? '',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: Text(
              data?.title ?? '',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text('£${data?.price}'),
          ),
        ]),
      ),
    );
  }
}
