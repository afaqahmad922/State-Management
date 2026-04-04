import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Cart Page.dart';
import 'Cart_Controller.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Cart with GetX"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Obx(() {
              return Stack(
                alignment: Alignment.topRight,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(() => CartPage());
                      },
                      child: const Icon(Icons.shopping_cart, size: 42)),

                  if (controller.totalItems > 0)
                    Container(
                      margin: const EdgeInsets.only(right: 0, top: 0),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 18,
                        minHeight: 18,
                      ),
                      child: Text(
                        controller.totalItems.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              );
            }),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            itemRow("Item 1", 0),
            const SizedBox(height: 20),
            itemRow("Item 2", 1),
            const SizedBox(height: 20),
            itemRow("Item 3", 2),
          ],
        ),
      ),
    );
  }

  Widget itemRow(String title, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 16)),
        Row(
          children: [
            IconButton(
              onPressed: () => controller.decrement(index),
              icon: const Icon(Icons.remove),
            ),
            Obx(
              () => Text(
                controller.itemCounts[index].toString(),
                style: const TextStyle(fontSize: 16),
              ),
            ),
            IconButton(
              onPressed: () => controller.increment(index),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
