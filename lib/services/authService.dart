import 'dart:io';

import 'package:appchat/model/charUser.dart';
import 'package:appchat/services/authFirebaseService.dart';

abstract class AuthService {
  ChatUser? get currentUser;

  Stream<ChatUser?> get userChanges;

  Future<void> signup(
    String name,
    String email,
    String password,
    File? image,
  );

  Future<void> login(
    String email,
    String password,
  );

  Future<void> logout();

  factory AuthService() {
    // return AuthMockService();
    return AuthFirebaseService();
  }
}
