import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'dart:io';

import './screens/loading_screen.dart';

import './widgets/change_notifier_provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          sleep(
            Duration(milliseconds: 1500),
          );
          if (snapshot.connectionState == ConnectionState.done) {
            // return _enterMaterialApp(context);
            return UserDataChangeNotifierProvider();
          }
          return LoadingScreen();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          // return _enterMaterialApp(context);
          return UserDataChangeNotifierProvider();
        }

        return LoadingScreen();
      },
    );
  }
}
