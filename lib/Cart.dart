import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<String> cartItems;

  const CartScreen({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(title: Text('Cart', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22, color: Color(0xffFFFFFF)),), backgroundColor: Colors.blueGrey),
      body: cartItems.isEmpty
          ? Center(child: Text("Cart is Empty"))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(cartItems[index]));
              },
            ),
    );
  }
}
