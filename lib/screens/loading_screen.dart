import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Loadding...\nPlease wait a little bit more...",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
