import 'dart:ffi';

import 'package:get/get.dart';

class CartController extends GetxController {
  var itemCounts = [0, 0, 0 , 0, 0, 0].obs;

  final List<String> itemNames = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
  ];

  int get totalItems => itemCounts.reduce((a, b) => a + b);

  void increment(int index) {
    itemCounts[index]++;
  }

  void decrement(int index) {
    if (itemCounts[index] > 0) {
      itemCounts[index]--;
    }
  }

  List<Map<String, dynamic>> get cartItems {
    List<Map<String, dynamic>> items = [];
    for (int i = 0; i < itemCounts.length; i++) {
      if (itemCounts[i] > 0) {
        items.add({
          "name": itemNames[i],
          "quantity": itemCounts[i],
        });
      }
    }
    return items;
  }
}