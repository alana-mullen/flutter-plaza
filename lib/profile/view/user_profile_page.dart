import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/profile_provider.dart';

@RoutePage()
class UserProfilePage extends ConsumerWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(profile.value?.name ?? 'Profile'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      'https://picsum.photos/id/13/300/400.webp',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 300.0,
              ),
            ),
          ]),
          Positioned(
            top: 180.0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      CachedNetworkImageProvider(profile.value?.avatar ?? ''),
                  fit: BoxFit.cover,
                ),
                border: const Border.fromBorderSide(
                  BorderSide(color: Colors.white, width: 6.0),
                ),
                shape: BoxShape.circle,
              ),
              width: 190.0,
              height: 190.0,
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
