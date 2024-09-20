import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/util/path_utils.dart';

part 'download_image_provider.g.dart';

@riverpod
class DownloadImage extends _$DownloadImage {
  @override
  Future<String?> build() async {
    return null;
  }

  downloadImage(String image) async {
    debugPrint('downloadImage Download image');
    const String imageFileName = 'image.jpg';

    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      debugPrint('downloadImage image: $image');
      final directory = await PathUtils.externalDocumentPath;
      if (directory.isEmpty) {
        throw Exception('Directory not found');
      }
      debugPrint('downloadImage directory: $directory');
      final taskId = await FlutterDownloader.enqueue(
        url: image,
        fileName: imageFileName,
        savedDir: directory,
        showNotification: true,
        openFileFromNotification: true,
      );
      if (taskId == null) {
        throw Exception('Download failed');
      }
      debugPrint('taskId: $taskId');

      return Future.value('$directory/$imageFileName');
    });
  }
}
