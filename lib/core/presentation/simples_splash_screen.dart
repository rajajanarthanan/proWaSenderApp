import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        Text("Simples Splash Screen"),
        SizedBox(
            height: 50,
            width: 50,
            child: SimplesSvg(
                loadFrom: LoadFrom.asset, load: '/profinixicon.svg')),
      ],
    )));
  }
}
