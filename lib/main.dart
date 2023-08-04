import 'package:flutter/material.dart';
import 'package:productdes/login.dart';
import 'package:productdes/new.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthPage(),
    );
  }
}
