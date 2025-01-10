import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simplyfirescore/core/app/config.dart';
import 'package:simplyfirescore/main.dart';

GoRouter simplesRouter(){
  return GoRouter(
    initialLocation: Routes.start,
    routes: [
    GoRoute(path: Routes.start,builder: (context, state)=>SimplesSplashScreen())
  ]);
}



