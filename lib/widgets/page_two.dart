import 'package:flutter/material.dart';

import './contacts_card.dart';

import '../common/h1text.dart';
import '../common/h2text.dart';
import '../common/default_button.dart';

class PageTwo extends StatelessWidget {
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
                    _settings(),
                    _accountSetting(),
                    _goAuth(context),
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

  Widget _settings() {
    return Container(
      child: Column(
        children: [
          H1Text(text: "Settings"),
          H2Text(text: "notification contacts"),
          ContactsCard(),
          H2Text(text: "check interval"),
          DefaultButton(icon: Icons.arrow_forward_ios
              //   mapKey: "check_interval",
              //   press: () {
              //     Navigator.of(context).pushNamed(
              //       '/setting_selection_screen',
              //       arguments: userDataModel.checkInterval,
              //     );
              //   },
              ),
          H2Text(text: "retry count"),
          DefaultButton(icon: Icons.arrow_forward_ios
              // mapKey: "Buttons",
              // press: null,
              ),
        ],
      ),
    );
  }

  Widget _accountSetting() {
    return Container(
      child: Column(
        children: [
          H1Text(text: "Account"),
          H2Text(text: "name"),
          DefaultButton(icon: Icons.edit
              // mapKey: "Buttons",
              // press: null,
              ),
          H2Text(text: "email"),
          DefaultButton(icon: Icons.edit
              // mapKey: "Buttons",
              // press: null,
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
