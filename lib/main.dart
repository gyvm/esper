import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'dart:io';

import './screens/auth_screen.dart';
import './screens/home_screen.dart';
import './screens/selection_screen.dart';
import './screens/loading_screen.dart';

// import './widgets/auth_check.dart';
import './common/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          sleep(
            Duration(milliseconds: 1500),
          );
          if (snapshot.connectionState == ConnectionState.done) {
            return _enterMaterialApp(context);
          }
          return LoadingScreen();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return _enterMaterialApp(context);
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return LoadingScreen();
      },
    );
  }

  Widget _enterMaterialApp(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: HexColor('AED1F4'),
        fontFamily: 'Roboto Mono',
      ),
      // home: AuthCheck(),
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/home_screen': (BuildContext context) => HomeScreen(),
        '/auth_screen': (BuildContext context) => AuthScreen(),
        '/selection_screen': (BuildContext context) => SelectionScreen(),
      },
    );
  }
}
