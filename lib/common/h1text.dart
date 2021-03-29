import 'package:flutter/material.dart';

class H1Text extends StatelessWidget {
  H1Text({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      // alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
