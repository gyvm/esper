import 'package:flutter/material.dart';

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
      home: AuthScreen(),
      routes: <String, WidgetBuilder>{
        '/home_screen': (BuildContext context) => HomeScreen(),
        '/auth_screen': (BuildContext context) => AuthScreen(),
        '/selection_screen': (BuildContext context) => SelectionScreen(),
      },
    );
  }
}
