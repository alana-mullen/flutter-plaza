import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:plaza/categories/model/category_response.dart';

class CategoryListTile extends StatelessWidget {
  const CategoryListTile({super.key, this.data, this.onTileTapped});

  final CategoryResponse? data;
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
              imageUrl: data?.image ?? '',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: Text(
              data?.name ?? '',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ]),
      ),
    );
  }
}
