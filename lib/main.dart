import 'package:flutter/material.dart';

import './screens/auth_screen.dart';
import './screens/home_screen.dart';

import './common/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: HexColor('AED1F4'),
        fontFamily: 'Roboto Mono',
      ),
      home: AuthScreen(),
      routes: <String, WidgetBuilder>{
        '/home_screen': (BuildContext context) => HomeScreen(),
        '/auth_screen': (BuildContext context) => AuthScreen(),
      },
    );
  }
}
