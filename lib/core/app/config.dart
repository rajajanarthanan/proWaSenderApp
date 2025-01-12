import 'package:firebase_core/firebase_core.dart';

class Config {
  static String get generateLocaleUrl =>
      'https://us-central1-profinixtechnologies-pr75.cloudfunctions.net/generatei18njsons';
  static bool get firebaseEmulator => true;

  static const FirebaseOptions firebaseOptions = FirebaseOptions(
      apiKey: "AIzaSyD1EwVadFO3wsvHTA5Hoil3BR5kAnIhURw",
      authDomain: "profinixtechnologies-pr75.firebaseapp.com",
      databaseURL:
          "https://profinixtechnologies-pr75-default-rtdb.firebaseio.com",
      projectId: "profinixtechnologies-pr75",
      storageBucket: "profinixtechnologies-pr75.appspot.com",
      messagingSenderId: "893369469150",
      appId: "1:893369469150:web:45090a9a36cf72a0a3da4f",
      measurementId: "G-BHPV965TLD");
}

class Routes {
  static String get start => '/';
}
