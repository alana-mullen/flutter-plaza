import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class PathUtils {
  static Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  static Future<String?> get downloadPath async {
    final directory = await getDownloadsDirectory();

    return directory?.path;
  }

  static Future<String> get externalDocumentPath async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
    final directory = Platform.isAndroid
        ? Directory("/storage/emulated/0/Download")
        : await getApplicationDocumentsDirectory();

    final exPath = directory.path;
    debugPrint("Saved Path: $exPath");
    await Directory(exPath).create(recursive: true);

    return exPath;
  }

  static Future<String> get temporaryPath async {
    final directory = await getTemporaryDirectory();

    return directory.path;
  }
}
