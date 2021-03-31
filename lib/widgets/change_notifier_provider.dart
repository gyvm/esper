import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

import '../widgets/enter_material_app.dart';
import '../models/user_data.dart';

class UserDataChangeNotifierProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserDataModel>(
      create: (context) => UserDataModel(),
      // return Consumer<UserDataModel>(builder: (_, model, __) {
      child: Consumer<UserDataModel>(builder: (context, model, child) {
        return EnterMaterialApp();
      }),
    );
  }
}
