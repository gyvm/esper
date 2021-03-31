import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user_data.dart';
import '../common/hexcolor.dart';
import '../common/selection_button.dart';
import '../common/selected_button.dart';

class SelectionScreen extends StatefulWidget {
  // SelectionScreen({Key key, @required this.args}) : super(key: key);

  // final List<String> args;

  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  int _selectedValue = null;
  String _selectedPointer = null;
  UserDataModel userDataModel = UserDataModel();

  // Provider.of<UserDataModel>(context).config[mapKey].toString();

  @override
  Widget build(BuildContext context) {
    // final List args = ModalRoute.of(context).settings.args;

    List<String> targetMap = userDataModel.checkIntervalList;
    // switch (args[0]) {
    switch ('check_interval') {
      case 'check_interval':
        targetMap = userDataModel.checkIntervalList;
        _selectedValue =
            Provider.of<UserDataModel>(context).config['check_interval'];
        _selectedPointer = userDataModel.checkInterval[_selectedValue];
        break;
      case 'retry_count':
        targetMap = userDataModel.retryCountList;
        _selectedValue =
            Provider.of<UserDataModel>(context).config['retry_count'];
        _selectedPointer = userDataModel.checkInterval[_selectedValue];
        break;
      default:
        print('error..,');
    }

    // final _itemExtent = 56.0;
    // final generatedList = List.generate(500, (index) => 'Item $index');

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
                  return Container(
                    child: targetMap[index].toString() == _selectedPointer
                        ? SelectedButton(
                            text: targetMap[index].toString(),
                            press: () {
                              print('OK Provider');
                            },
                          )
                        : SelectionButton(
                            text: targetMap[index].toString(),
                            press: () {
                              print('No Provider');
                            },
                          ),
                  );
                },
                childCount: targetMap.length,
                // childCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
