import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../app/global_exports.dart';

class FirestoreService {
  final FirebaseFirestore firestore;

  FirestoreService({required this.firestore});

  Future<Either<SimplesError, void>> setDoc(
      String path, Map<String, dynamic> data) async {
    return simplesCall(() async {
      await firestore.doc(path).set(data);
      return;
    });
  }

  Future<Either<SimplesError, Map<String, dynamic>>> getDoc(String path) async {
    return simplesCall(() async {
      final doc = await firestore.doc(path).get();
      return doc.data()!;
    });
  }

  Future<Either<SimplesError, Stream<Map<String, dynamic>>>> queryStream(
      String path) async {
    return simplesCall(() async {
      final stream = firestore.doc(path).snapshots();
      return stream.map((snapshot) => snapshot.data()!);
    });
  }
}
