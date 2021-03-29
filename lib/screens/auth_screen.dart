import 'package:flutter/material.dart';

import '../widgets/email_sign_up_form.dart';
import '../widgets/email_sign_in_form.dart';
import '../common/hexcolor.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var _isSignIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: _isSignIn ? EmailSignInForm() : EmailSignUpForm(),
            ),
            Container(
              child: _isSignIn ? _goToSignUpButton() : _goToSignInButton(),
            ),
            _goHomeScreen(context),
          ],
        ),
      ),
    );
  }

  Widget _goToSignInButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          _isSignIn = true;
        });
      },
      child: Text(
        "goToSignIn",
        style: TextStyle(
          color: HexColor('ECF684'),
        ),
      ),
    );
  }

  Widget _goToSignUpButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          _isSignIn = false;
        });
      },
      child: Text(
        "goToSignUp",
        style: TextStyle(
          color: HexColor('ECF684'),
        ),
      ),
    );
  }

  Widget _goHomeScreen(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(
            '/home_screen',
            arguments: null,
          );
        },
        child: Text(
          'Go Home Screen',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
