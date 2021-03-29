import 'package:flutter/material.dart';

import '../widgets/page_one.dart';
import '../widgets/page_two.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('esper'),
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: PageOne(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: PageTwo(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
