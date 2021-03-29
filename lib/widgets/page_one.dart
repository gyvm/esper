import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(
            '/auth_screen',
            arguments: null,
          );
        },
        child: Text(
          'Page One',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
