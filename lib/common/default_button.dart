import 'package:esper_prod/common/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user_data.dart';
import '../common/hexcolor.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required this.icon,
    @required this.press,
    @required this.mapKey,
  }) : super(key: key);

  final IconData icon;
  final Function press;
  final String mapKey;

  @override
  Widget build(BuildContext context) {
    var text = "button value";

    if (mapKey != null) {
      var mapkey2 = Provider.of<UserDataModel>(context).config[mapKey];
      UserDataModel userDataModel = UserDataModel();
      switch (mapKey) {
        case 'check_interval':
          text = userDataModel.checkInterval[mapkey2].toString();
          print('ok1');
          break;
        case 'retry_count':
          text = userDataModel.retryCount[mapkey2].toString();
          print('ok2');
          break;
        case 'name':
          text = Provider.of<UserDataModel>(context).config[mapKey];
          print('ok3');
          break;
        case 'email':
          text = Provider.of<UserDataModel>(context).config[mapKey];
          print('ok4');
          break;
        default:
          print('error..,');
      }
    }

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
