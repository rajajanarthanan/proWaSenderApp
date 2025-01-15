import 'package:flutter/material.dart';
import 'package:simplyfirescore/widget_controller.dart';

import '../app/global_exports.dart';

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
        ElevatedButton(child: Text("Test"), onPressed: () async {}),
        //TODO: build the splash with svg
        Text("Simples Splash Screen")
      ],
    )));
  }
}
