import 'package:flutter/material.dart';
import 'package:vehichain1/routes.dart';
import 'package:vehichain1/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BTP app',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Colors.black
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
      routes: routes,
    );
  }
}

