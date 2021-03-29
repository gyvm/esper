import 'package:esper_prod/common/hexcolor.dart';
import 'package:flutter/material.dart';

import 'hexcolor.dart';

class LogoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'ESPER',
        style: TextStyle(
          color: HexColor('ECF684'),
          fontSize: 32,
          shadows: [
            Shadow(
              blurRadius: 10.0,
              color: Colors.black,
              offset: Offset(5.0, 5.0),
            ),
          ],
        ),
      ),
    );
  }
}
