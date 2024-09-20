import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:platform/platform.dart';

class PermissionUtils {
  PermissionUtils._();

  @visibleForTesting
  static Platform platform = LocalPlatform();
  @visibleForTesting
  static DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  static bool get _isAndroid => platform.isAndroid;
  static bool get _isIOS => platform.isIOS;
  static get _androidInfo async => await deviceInfoPlugin.androidInfo;

  static Future<bool> checkPermission() async {
    if (_isIOS) {
      return true;
    }

    if (_isAndroid) {
      final info = await _androidInfo;
      if (info.version.sdkInt > 28) {
        return true;
      }

      final status = await Permission.storage.status;
      if (status == PermissionStatus.granted) {
        return true;
      }

      final result = await Permission.storage.request();

      return result == PermissionStatus.granted;
    }

    throw StateError('Unknown platform');
  }
}
