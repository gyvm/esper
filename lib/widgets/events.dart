import 'package:flutter/material.dart';

import '../common/h2text.dart';
import '../common/hexcolor.dart';

class Events extends StatelessWidget {
  var list = [
    "メッセージ",
    "メッセージ",
    "メッセージ",
    "メッセージ",
    "メッセージ",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          H2Text(text: 'Events'),
          Container(
            // padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            padding: EdgeInsets.all(10),
            constraints: BoxConstraints(minHeight: 100.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: HexColor('9FB8D3'),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return _events(list[index]);
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _events(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Container(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Text('○'),
            ),
            Expanded(
              flex: 2,
              child: Text('2021/Mar/02'),
            ),
            Expanded(
              flex: 1,
              child: Text('Online'),
            ),
          ],
        ),
      ),
    );
  }
}
