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
