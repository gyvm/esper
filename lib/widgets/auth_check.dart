import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../screens/auth_screen.dart';
import './stream_user_data.dart';

class AuthCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (ctx, userSnapshot) {
        if (userSnapshot.hasData) {
          print('Hello');
          // return UserDataChangeNotifierProvider();
          return StreamUserData();
        } else {
          print('Who are you?');
          return AuthScreen();
        }
      },
    );
  }
}
