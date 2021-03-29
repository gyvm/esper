import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './contacts_card.dart';
import './edit_dialog.dart';
import '../common/h1text.dart';
import '../common/h2text.dart';
import '../common/default_button.dart';

class PageTwo extends StatelessWidget {
  Future<Duration> showTimerDialog({
    @required BuildContext context,
    TransitionBuilder builder,
    bool useRootNavigator = true,
  }) {
    final Widget dialog = EditDialog();
    return showDialog(
      context: context,
      useRootNavigator: useRootNavigator,
      builder: (BuildContext context) {
        return builder == null ? dialog : builder(context, dialog);
      },
    );
  }

  Future<void> _signOut() async {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    _settings(context),
                    _accountSetting(context),
                    _goAuth(context),
                    TextButton(
                      onPressed: _signOut,
                      child: Text(
                        "サインアウト",
                      ),
                    ),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _settings(BuildContext context) {
    return Container(
      child: Column(
        children: [
          H1Text(text: "Settings"),
          H2Text(text: "notification contacts"),
          ContactsCard(),
          H2Text(text: "check interval"),
          DefaultButton(
            icon: Icons.arrow_forward_ios,
            press: () {
              Navigator.of(context).pushNamed(
                '/selection_screen',
                arguments: null,
              );
            },
            //   mapKey: "check_interval",
          ),
          H2Text(text: "retry count"),
          DefaultButton(
            icon: Icons.arrow_forward_ios,
            press: () {},
            // mapKey: "Buttons",
          ),
        ],
      ),
    );
  }

  Widget _accountSetting(BuildContext context) {
    return Container(
      child: Column(
        children: [
          H1Text(text: "Account"),
          H2Text(text: "name"),
          DefaultButton(
            icon: Icons.edit,
            press: () {},
            // mapKey: "Buttons",
          ),
          H2Text(text: "email"),
          DefaultButton(
            icon: Icons.edit,
            press: () async {
              Duration date = await showTimerDialog(context: context);
              // timerBloc.setting.add(date);
            },
            // mapKey: "Buttons",
          ),
        ],
      ),
    );
  }

  Widget _goAuth(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/auth_screen',
                arguments: null,
              );
            },
            child: Text(
              'Go Auth Screen',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/selection_screen',
                arguments: null,
              );
            },
            child: Text(
              'Go Selection Screen',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
