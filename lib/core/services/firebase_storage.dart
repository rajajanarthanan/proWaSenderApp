import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class FireStorageService {
  final FirebaseStorage _storage;
  FireStorageService(this._storage);

  Future<String> downloadFile(String path, String fileName) async {
    final ref = _storage.ref(path);
    final url = await ref.child(fileName).getDownloadURL();
    return url;
  }

  Future<void> uploadFile(String path, String fileName, String url) async {
    final ref = _storage.ref(path);
    await ref.child(fileName).putFile(File.fromUri(Uri.parse(url)));
  }
}
