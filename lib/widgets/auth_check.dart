import 'package:flutter/material.dart';

class AuthCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'esper-dev demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: HexColor('AED1F4'),
        fontFamily: 'Roboto Mono',
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, userSnapshot) {
          if (userSnapshot.hasData) {
            return HogeWidget();
          } else {
            return AuthScreen();
          }
        },
      ),
      routes: <String, WidgetBuilder>{
        '/setting_selection_screen': (BuildContext context) =>
            SettingSelectionScreen(),
      },
    );
  }
}
