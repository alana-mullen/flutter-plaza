import 'package:auto_route/auto_route.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation/router/nav_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterDownloader.initialize(debug: true);

  runApp(
    DevicePreview(
      enabled: kIsWeb,
      defaultDevice: Devices.ios.iPhone13ProMax,
      isToolbarVisible: true,
      tools: [
        DeviceSection(
          model: true,
          orientation: false,
          frameVisibility: true,
          virtualKeyboard: false,
        ),
      ],
      builder: (context) => ProviderScope(child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final navRouter = NavRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: navRouter.config(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      title: 'Flutter Plaza',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
    );
  }
}
