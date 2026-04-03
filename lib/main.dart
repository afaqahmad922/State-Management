import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/Add%20to%20Cart.dart';
import 'package:state_management/GetX/GetX_Cart.dart';
import 'package:state_management/State%20Management.dart';
import 'package:state_management/get.dart';

import 'GetX/Cart_Controller.dart';

void main() {
  Get.put(CartController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartScreen(),
    );
  }
}
