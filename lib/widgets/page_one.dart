import 'package:flutter/material.dart';

import './message.dart';
import './events.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Message(),
          ),
          Expanded(
            flex: 4,
            child: Events(),
          ),
        ],
      ),
    );
  }
}
