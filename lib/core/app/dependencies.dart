import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:simplyfirescore/core/app/config.dart';
import 'package:simplyfirescore/core/services/auth_service.dart';
import 'package:simplyfirescore/core/services/fire_functions_service.dart';
import 'package:simplyfirescore/core/services/firebase_messaging_service.dart';
import 'package:simplyfirescore/core/services/firestore_service.dart';

import '../services/api_service.dart';
import '../services/firebase_storage.dart';

Future<void> setUpDependencies() async {
  GetIt getIt = GetIt.instance;
  final Dio dio = Dio();
  getIt.registerSingleton<ApiService>(ApiService(dio));

  final firebaseApp =
      await Firebase.initializeApp(options: Config.firebaseOptions);
  final firebaseAuth = FirebaseAuth.instanceFor(app: firebaseApp);
  getIt.registerSingleton<AuthService>(AuthService(firebaseAuth));

  final fireStore = FirebaseFirestore.instanceFor(app: firebaseApp);
  getIt.registerSingleton<FirestoreService>(
      FirestoreService(firestore: fireStore));

  final fireStorage = FirebaseStorage.instanceFor(app: firebaseApp);
  getIt.registerSingleton<FireStorageService>(FireStorageService(fireStorage));

  final firebaseFunctions = FirebaseFunctions.instanceFor(app: firebaseApp);
  getIt.registerSingleton<FireFunctionsService>(
      FireFunctionsService(firebaseFunctions));

  final fcm = FirebaseMessaging.instance;
  getIt.registerSingleton<FirebaseMessagingService>(
      FirebaseMessagingService(fcm));

  Future.delayed(Duration(seconds: 2));
}
