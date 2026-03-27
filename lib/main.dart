import 'package:flutter/material.dart';
import 'package:state_management/Add%20to%20Cart.dart';
import 'package:state_management/State%20Management.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: add_Cart(),
    );
  }
}
