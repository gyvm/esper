import 'package:esper_prod/common/hexcolor.dart';
import 'package:flutter/material.dart';

class EditDialog extends StatefulWidget {
  @override
  State createState() => EditDialogState();
}

class EditDialogState extends State<EditDialog> {
  final dateTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MaterialLocalizations localizations = MaterialLocalizations.of(context);
    final List<Widget> actions = [
      TextButton(
        child: Text(localizations.cancelButtonLabel),
        onPressed: () => Navigator.pop(context),
      ),
      TextButton(
        child: Text(localizations.okButtonLabel),
        onPressed: () {
          // TODO バリデーション
          int seconds = int.tryParse(dateTextController.text);
          Navigator.pop<Duration>(context, Duration(seconds: seconds));
        },
      ),
    ];
    final AlertDialog dialog = AlertDialog(
      title: Text("value"),
      content: TextField(
        controller: dateTextController,
        decoration: InputDecoration(
          fillColor: HexColor('ECF684'),
          focusColor: HexColor('ECF684'),
          hoverColor: HexColor('ECF684'),
          hintText: "value",
        ),
        autofocus: true,
        keyboardType: TextInputType.number,
      ),
      actions: actions,
    );

    return dialog;
  }

  @override
  void dispose() {
    dateTextController.dispose();
    super.dispose();
  }
}
