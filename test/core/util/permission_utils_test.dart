import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:platform/platform.dart';
import 'package:plaza/core/util/permission_utils.dart';

import 'permission_utils_test.mocks.dart';

@GenerateMocks(
  [
    DeviceInfoPlugin,
    AndroidDeviceInfo,
    AndroidBuildVersion,
  ],
)
void main() {
  late MockDeviceInfoPlugin mockDeviceInfoPlugin;
  late MockAndroidDeviceInfo mockAndroidDeviceInfo;
  late MockAndroidBuildVersion mockAndroidBuildVersion;

  setUp(() {
    mockDeviceInfoPlugin = MockDeviceInfoPlugin();
    mockAndroidDeviceInfo = MockAndroidDeviceInfo();
    mockAndroidBuildVersion = MockAndroidBuildVersion();
  });

  group('PermissionUtils', () {
    test('Should return true when the platform is Android', () async {
      when(mockAndroidBuildVersion.sdkInt).thenReturn(30); // Stub sdkInt
      when(mockAndroidDeviceInfo.version).thenReturn(mockAndroidBuildVersion);
      when(mockDeviceInfoPlugin.androidInfo)
          .thenAnswer((_) async => mockAndroidDeviceInfo);

      PermissionUtils.platform =
          FakePlatform(operatingSystem: Platform.android);
      PermissionUtils.deviceInfoPlugin = mockDeviceInfoPlugin;

      final permissionStatus = await PermissionUtils.checkPermission();
      expect(permissionStatus, true);
    });

    test('Should return true when the platform is iOS', () async {
      PermissionUtils.platform = FakePlatform(operatingSystem: Platform.iOS);
      final permissionStatus = await PermissionUtils.checkPermission();
      expect(permissionStatus, true);
    });
  });
}
