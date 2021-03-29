import 'package:esper_prod/common/hexcolor.dart';
import 'package:flutter/material.dart';

import '../common/hexcolor.dart';
// import 'package:provider/provider.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required this.icon,
    @required this.press,
    // @required this.mapKey,
  }) : super(key: key);

  final IconData icon;
  final Function press;
  // final String mapKey;

  @override
  Widget build(BuildContext context) {
    var text = "button value";
    // if (mapKey != null) {
    //   text = Provider.of<UserDataModel>(context).config[mapKey].toString();
    // }

    return SizedBox(
      width: double.infinity,
      height: 70,
      child: Padding(
        // padding: const EdgeInsets.all(4.0),
        padding: const EdgeInsets.fromLTRB(4, 4, 4, 12),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: HexColor('9FB8D3'),
            onPrimary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          onPressed: press,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Icon(
                icon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}