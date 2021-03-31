import 'package:flutter/material.dart';

import '../screens/auth_screen.dart';
import '../screens/home_screen.dart';
import '../screens/selection_screen.dart';

import '../widgets/auth_check.dart';
import '../common/hexcolor.dart';

class EnterMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: HexColor('AED1F4'),
        fontFamily: 'Roboto Mono',
      ),
      home: AuthCheck(),
      routes: <String, WidgetBuilder>{
        '/auth_screen': (BuildContext context) => AuthScreen(),
        '/home_screen': (BuildContext context) => HomeScreen(),
        '/selection_screen': (BuildContext context) => SelectionScreen(),
      },
    );
  }
}
