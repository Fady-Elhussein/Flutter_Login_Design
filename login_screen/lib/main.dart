import 'package:flutter/material.dart';
import 'modules/login screen/login.dart';

void main() {
  runApp(firstapp());
}

class firstapp extends StatefulWidget {
  @override
  State<firstapp> createState() => _firstappState();
}

class _firstappState extends State<firstapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First APP",
      home: login(),
    );
  }
}
