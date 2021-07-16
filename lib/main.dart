import 'package:flutter/material.dart';
import 'package:login_register/modules/home/HomePage.dart';
import 'modules/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data User',
      home: HomePage(),
    );
  }
}
