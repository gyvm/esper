import 'package:flutter/material.dart';

import '../common/emoji_ large.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          EmojiLarge(),
          Text('MessageMessageMessageMessage\nMessageMessageMessageMessage'),
        ],
      ),
    );
  }
}
