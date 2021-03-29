import 'package:flutter/material.dart';

class EmojiLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '🐶',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 170,
      ),
    );
  }
}
