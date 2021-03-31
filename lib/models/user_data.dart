import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class UserDataModel extends ChangeNotifier {
  Map<String, dynamic> _config = {
    'name': 'Tap to edit',
    'email': 'Tap to edit',
    'check_interval': 14,
    'retry_count': 3,
    'last_check': 'Timestamp(seconds=1614339150, nanoseconds=976890000)',
    'next_check': 'Timestamp(seconds=1614339150, nanoseconds=976890000)',
  };
  Map<String, dynamic> get config => _config;

  final Map<int, String> _checkInterval = {
    1: '1day',
    3: '3day',
    5: '5day',
    7: '1week',
    14: '2week',
    30: '30day'
  };
  Map<int, String> get checkInterval => _checkInterval;

  final List<String> _checkIntervalList = [
    '1day',
    '3day',
    '5day',
    '1week',
    '2week',
    '30day'
  ];
  List<String> get checkIntervalList => _checkIntervalList;

  final Map<int, String> _retryCount = {1: '1times', 3: '3times'};
  Map<int, String> get retryCount => _retryCount;

  final List<String> _retryCountList = ['1times', '3times'];
  List<String> get retryCountList => _retryCountList;

  // // Map<String, dynamic> contacts = {
  // //   'last_check': 'Timestamp(seconds=1614339150, nanoseconds=976890000)',
  // //   'next_check': 'Timestamp(seconds=1614339150, nanoseconds=976890000)',
  // //   'name': 'ok',
  // //   'email': '',
  // //   'phone_number': 'ok',
  // //   'check_interval': '2 week',
  // //   'retry_count': '3 times',
  // // };

  // int _count = 0;

  // int get count => _count;

  // void increment() {
  //   _count++;
  //   print(_count.toString());
  //   notifyListeners();
  // }

  // void update(String key, dynamic data) {
  //   _config[key] = data;
  //   notifyListeners();
  //   // just print for dev.
  //   print("in config : " + _config[key].toString());
  //   print("success update!");
  // }

  // // contactsのwidget用に登録されている連絡先の名前2文字とステータスを返す。
  // // void getContacts() {
  // //   print("in config : " + _config[key].toString());
  // //   print("success update!");
  // // }
}
