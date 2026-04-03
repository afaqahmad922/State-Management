import 'package:get/get.dart';

class CartController extends GetxController {
  var itemCounts = [0, 0, 0].obs;

  int get totalItems => itemCounts.reduce((a, b) => a + b);

  void increment(int index) {
    itemCounts[index]++;
  }

  void decrement(int index) {
    if (itemCounts[index] > 0) {
      itemCounts[index]--;
    }
  }
}