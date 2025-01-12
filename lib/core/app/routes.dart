import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../main.dart';
import 'config.dart';

GoRouter simplesRouter() {
  return GoRouter(initialLocation: Routes.start, routes: [
    GoRoute(
        path: Routes.start, builder: (context, state) => SimplesSplashScreen())
  ]);
}
