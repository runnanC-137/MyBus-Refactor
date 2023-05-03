import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
  bool isLoading = true;

/*   AuthService() {
    _authCheck();
  }
 */
  authCheck(Function calback) {
    _auth.authStateChanges().listen((User? authUser) {
      user = (user == null) ? null : authUser;
      isLoading = false;
      calback();
      print(isLoading);
      print('0000');
    });
  }
}
