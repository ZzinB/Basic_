import 'package:flutter/material.dart';
import 'data.dart';

void main() async {
  // NOTE: if you want to find out if the app was launched via notification then you could use the following call and then do something like
  // change the default route of the app
  // var notificationAppLaunchDetails =
  //     await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
  runApp(
    MaterialApp(
      home: DataPage(),
    ),
  );
}
