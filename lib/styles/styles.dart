// ignore_for_file: unnecessary_new

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:staying_safe/screens/auth_screen.dart';
import 'package:staying_safe/screens/home_screen.dart';
import 'package:staying_safe/screens/sos_screen.dart';
import 'package:staying_safe/screens/auth_screen.dart';
//import 'package:staying_safe/styles/util.dart';

class Styles {
  static const TextStyle logintext = TextStyle(fontSize: 20);

  static final ButtonStyle loginStyle = ElevatedButton.styleFrom(
      primary: Colors.black,
      minimumSize: const Size(100, 50),
      textStyle: const TextStyle(
          color: Colors.black, fontSize: 10, fontStyle: FontStyle.italic));

  static final ButtonStyle sosStyle = ElevatedButton.styleFrom(
      minimumSize: const Size(100, 75),
      primary: Colors.blue,
      padding: const EdgeInsets.all(10),
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));

  static final ButtonStyle sosTopEmergency = ElevatedButton.styleFrom(
      minimumSize: const Size(90, 90),
      primary: Colors.red,
      padding: const EdgeInsets.all(10),
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));

  static final ButtonStyle sosTopContact = ElevatedButton.styleFrom(
      minimumSize: const Size(90, 90),
      primary: Colors.blue,
      padding: const EdgeInsets.all(10),
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));

  static final ButtonStyle sosExitButton = ElevatedButton.styleFrom(
      minimumSize: const Size(100, 75),
      primary: Colors.red,
      padding: const EdgeInsets.all(10),
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));

  static final ButtonStyle sosTrue = ElevatedButton.styleFrom(
      minimumSize: const Size(10, 10),
      primary: Colors.blue,
      padding: const EdgeInsets.all(5),
      textStyle: const TextStyle(fontSize: 5, fontWeight: FontWeight.bold));

  static final ButtonStyle SOSButton = ElevatedButton.styleFrom(
      minimumSize: const Size(370, 370),
      shape:
          const CircleBorder(side: BorderSide(width: 0, color: Colors.white)),
      primary: Colors.grey[400],
      padding: const EdgeInsets.all(0),
      textStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold));
}

class text {
  static const TextStyle logintext = TextStyle(fontSize: 20);

  static TextStyle contactText =
      const TextStyle(color: Colors.white, fontSize: 20);
}

class Methods {
  static onSetting(BuildContext context, int item) {
    switch (item) {
      case 0:
        () async {
          await FirebaseAuth.instance.signOut();
        };
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AuthApp()),
        );
        break;
    }
  }

  static onHome(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Homescreen()),
        );
        break;
      case 1:
        () async {
          await FirebaseAuth.instance.signOut();
        };
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AuthApp()),
        );
        break;
    }
  }
}
