import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../screens/auth_screen.dart';
import './change_notifier_provider.dart';

class AuthCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (ctx, userSnapshot) {
        if (userSnapshot.hasData) {
          print('Hello');
          return UserDataChangeNotifierProvider();
        } else {
          print('Who are you?');
          return AuthScreen();
        }
      },
    );
  }
}
