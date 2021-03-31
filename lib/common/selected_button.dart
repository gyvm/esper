import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../models/user_data.dart';
import '../common/hexcolor.dart';

class SelectedButton extends StatelessWidget {
  SelectedButton({
    Key key,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    if (text == null) {
      text = "button value";
    }

    return SizedBox(
      width: double.infinity,
      height: 70,
      child: Padding(
        // padding: const EdgeInsets.all(4.0),
        padding: const EdgeInsets.fromLTRB(4, 4, 4, 12),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: HexColor('ECF684'),
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
              Icon(Icons.check),
            ],
          ),
        ),
      ),
    );
  }
}
