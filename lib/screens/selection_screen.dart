import 'package:esper_prod/common/hexcolor.dart';
import 'package:flutter/material.dart';

import '../common/hexcolor.dart';
import '../common/selection_button.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('AED1F4'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: HexColor('ECF684'),
              onPressed: () {
                Navigator.of(context).pop();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(
          'title',
          style: TextStyle(
            color: HexColor('ECF684'),
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(padding: EdgeInsets.only(bottom: 15)),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: [
                      SelectionButton(
                          // mapKey: args[index].toString(),
                          // press: () {},
                          ),
                    ],
                  );
                },
                // childCount: args.length,
                childCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
