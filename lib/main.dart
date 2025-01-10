import 'package:flutter/material.dart';
import 'package:simplyfirescore/core/app/global_exports.dart';
import 'package:simplyfirescore/core/app/routes.dart';

void main() {
  runApp(const SimplesApp());
}

class SimplesApp extends StatelessWidget {
  const SimplesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: appTitle,
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
    return const Placeholder();
  }
}