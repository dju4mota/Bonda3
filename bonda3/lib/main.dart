import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'view/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: Home(),
      title: "Gay",
      theme: CupertinoThemeData(
        barBackgroundColor: Color.fromARGB(255, 0, 0, 0),
        scaffoldBackgroundColor: Color.fromARGB(255, 140, 152, 161),
        primaryColor: Color.fromARGB(255, 0, 11, 20),
      ),
    );
  }
}
