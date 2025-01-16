import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  late final FirebaseAuth firebaseAuth;
  AuthService(this.firebaseAuth);

  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<UserCredential> signIn(String email, String password) async {
    return await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signUp(String email, String password) async {
    await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> resetPassword(String email) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<void> sendEmailVerification() async {
    await firebaseAuth.currentUser!.sendEmailVerification();
  }

  Future<void> sendPasswordResetEmail(String email) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<void> verifyPasswordResetCode(String code) async {
    await firebaseAuth.verifyPasswordResetCode(code);
  }

  Future<void> confirmPasswordReset(String code, String newPassword) async {
    await firebaseAuth.confirmPasswordReset(
        code: code, newPassword: newPassword);
  }

  Future<void> updatePassword(String newPassword) async {
    await firebaseAuth.currentUser!.updatePassword(newPassword);
  }

  Future<void> updateEmail(String newEmail) async {
    await firebaseAuth.currentUser!.verifyBeforeUpdateEmail(newEmail);
  }

  Future<void> updateDisplayName(String name) async {
    await firebaseAuth.currentUser!.updateDisplayName(name);
  }

  Future<void> updatePhotoUrl(String url) async {
    await firebaseAuth.currentUser!.updatePhotoURL(url);
  }

  Future<void> delete() async {
    await firebaseAuth.currentUser!.delete();
  }

  Future<void> signInWithPhoneNumber(String phoneNumber) async {
    await firebaseAuth.signInWithPhoneNumber(phoneNumber);
  }

  Future<void> signInWithPopup(AuthProvider provider) async {
    await firebaseAuth.signInWithPopup(provider);
  }

  Future<void> signInWithRedirect(AuthProvider provider) async {
    await firebaseAuth.signInWithRedirect(provider);
  }
}
