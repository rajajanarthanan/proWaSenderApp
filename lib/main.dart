import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplyfirescore/core/app/dependencies.dart';

import 'core/app/global_exports.dart';
import 'core/app/routes.dart';
import 'widget_controller.dart';

Future<void> main() async {
  await setUpDependencies();
  runApp(const SimplesApp());
}

class SimplesApp extends StatelessWidget {
  const SimplesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Strings.appTitle,
      darkTheme: simplesDarkTheme,
      theme: simplesLightTheme,
      themeMode: ThemeMode.system,
      routerConfig: simplesRouter(),
    );
  }
}

class SimplesSplashScreen extends StatelessWidget {
  const SimplesSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = WidgetController();
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        Text(Strings.appTitle),
        ElevatedButton(
            child: Text("Test"),
            onPressed: () async {
              await controller.test();
            }),
        Obx(() => Text(controller.resultText.value))
      ],
    )));
  }
}
