import 'package:flutter/material.dart';
import 'package:simpleapp/home_ui.dart';
import 'package:simpleapp/login_ui.dart';
import 'package:simpleapp/sign_up.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: '/signUp',
      routes: {
        '/': (context) => login(),
        '/homeUi': (context) => homeUi(),
        '/signUp': (context) => signUp(),
      },
    ));
