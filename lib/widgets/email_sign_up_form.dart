import 'package:flutter/material.dart';

import '../common/h2text.dart';
import '../common/hexcolor.dart';

class EmailSignUpForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // メールアドレスの入力フィールド
              Container(
                child: Column(
                  children: [
                    H2Text(text: 'Email'),
                    TextFormField(
                      key: ValueKey("email"),
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'メールアドレス',
                      ),
                    ),
                  ],
                ),
              ),

              // パスワード1の入力フィール
              Container(
                child: Column(
                  children: [
                    H2Text(text: 'Email'),
                    TextFormField(
                      key: ValueKey("password1"),
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'メールアドレス',
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              // パスワード2の入力フィール
              Container(
                child: Column(
                  children: [
                    H2Text(text: 'Email'),
                    TextFormField(
                      key: ValueKey("password2"),
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'メールアドレス',
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
              ),

              // // パスワード1の入力フィールド
              // H2Text(text: 'Password'),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(4, 20, 4, 20),
              //   child: TextFormField(
              //     key: ValueKey("password1"),
              //     decoration: const InputDecoration(
              //       hintText: 'パスワード1',
              //     ),
              //     obscureText: true,
              //   ),
              // ),
            ],
          ),
        ),
        padding: EdgeInsets.all(40),
      ),
    );
  }
}
