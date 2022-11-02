import 'dart:ffi';
import 'package:firstapp/home.dart';
import 'package:flutter/material.dart';

Void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily:"Gilroy"),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
