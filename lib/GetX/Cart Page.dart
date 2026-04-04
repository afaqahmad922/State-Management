import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Cart_Controller.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
      ),
      body: Obx(() {
        final items = controller.cartItems;

        if (items.isEmpty) {
          return const Center(
            child: Text("Cart is empty"),
          );
        }

        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]["name"], style: TextStyle(fontSize: 18),),
              trailing: Text("Qty: ${items[index]["quantity"]}", style: TextStyle(fontSize: 18),),
            );
          },
        );
      }),
    );
  }
}