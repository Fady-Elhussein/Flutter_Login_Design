import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(firstapp());
}

class firstapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First APP",
      home: login(),
    );
  }
}
