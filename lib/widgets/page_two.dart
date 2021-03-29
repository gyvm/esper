import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
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
          'Page Two',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
