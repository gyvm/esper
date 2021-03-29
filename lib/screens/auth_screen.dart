import 'package:flutter/material.dart';

import '../widgets/email_sign_up_form.dart';
import '../common/hexcolor.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: EmailSignUpForm(),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/home_screen',
                    arguments: null,
                  );
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              child: goToSignInButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget goToSignInButton() {
    return TextButton(
      onPressed: () {},
      child: Text(
        "",
        style: TextStyle(
          color: HexColor('ECF684'),
        ),
      ),
    );
  }
}
