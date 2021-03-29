import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../screens/home_screen.dart';
// import '../screens/auth_screen.dart';

class AuthCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (ctx, userSnapshot) {
        if (userSnapshot.hasData) {
          return HomeScreen();
        } else {
          // return AuthScreen();
          return HomeScreen();
        }
      },
    );
  }
}
