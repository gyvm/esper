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
            Expanded(
              child: PageView(
                // controller: controller,
                scrollDirection: Axis.horizontal,
                children: [
                  PageOne(),
                  PageTwo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
