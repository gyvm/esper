import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../screens/home_screen.dart';
import '../models/user_data.dart';

class UserDataChangeNotifierProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = FirebaseAuth.instance.currentUser;
    Stream documentStream = FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .snapshots();
    return ChangeNotifierProvider(
      create: (context) => UserDataModel(),
      child: StreamBuilder(
        stream: documentStream,
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              !snapshot.hasData) {
            print("error2");
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          // var userData = context.read<UserDataModel>();
          // final docData = snapshot.data;
          // userData.config.forEach((key, value) {
          //   print("012345");
          //   try {
          //     var data = docData[key];
          //     if (data.runtimeType == Timestamp && key != data) {
          //       data = docData[key].toDate();
          //     }
          //     if (value != data) {
          //       userData.update(key, data);
          //     }
          //   } catch (e) {
          //     print(e); //2014-07-15 19:48:02.032
          //   }
          // });

          // userData.history.forEach((key, value) {
          //   print("012345");
          //   try {
          //     var data = docData[key];
          //     if (data.runtimeType == Timestamp && key != data) {
          //       data = docData[key].toDate();
          //     }
          //     if (value != data) {
          //       userData.update(key, data);
          //     }
          //   } catch (e) {
          //     print(e); //2014-07-15 19:48:02.032
          //   }
          // });

          return Consumer<UserDataModel>(builder: (_, model, __) {
            return HomeScreen();
          });
        },
      ),
    );
  }
}
