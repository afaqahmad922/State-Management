import 'package:flutter/material.dart';

import 'Cart.dart';

class add_Cart extends StatefulWidget {
  const add_Cart({super.key});

  @override
  State<add_Cart> createState() => _add_CartState();
}

class _add_CartState extends State<add_Cart> {
  List<String> cartItems = [];
  int quantity = 0;
  int quantity1 = 0;
  int quantity2 = 0;
  int quantity3 = 0;
  int quantity4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Check',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CartScreen(cartItems: cartItems),
                            ),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.tealAccent,
                          ),
                          child: Icon(Icons.shopping_cart, color: Colors.black),
                        ),
                      ),
                    ),

                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            cartItems.length.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Divider(color: Colors.black, thickness: 1),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Item1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        if (quantity>0) {
                          quantity--;
                          cartItems.remove("Item1");
                        }
                      });
                    }, icon: Icon(Icons.remove), style: IconButton.styleFrom(backgroundColor: Colors.blueGrey ,foregroundColor: Colors.white),),
                    SizedBox(width: 8,),
                    Text(quantity.toString(), style: TextStyle(fontSize: 20),),
                    SizedBox(width: 8,),
                    IconButton(onPressed: (){
                      setState(() {
                        quantity++;
                        cartItems.add("Item1");
                      });
                    },  icon: Icon(Icons.add), style: IconButton.styleFrom(backgroundColor: Colors.deepOrangeAccent, foregroundColor: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Item2',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        if (quantity1>0) quantity1--;
                        cartItems.remove("Item2");
                      });
                    }, icon: Icon(Icons.remove), style: IconButton.styleFrom(backgroundColor: Colors.blueGrey ,foregroundColor: Colors.white),),
                    SizedBox(width: 8,),
                    Text(quantity1.toString(), style: TextStyle(fontSize: 20),),
                    SizedBox(width: 8,),
                    IconButton(onPressed: (){
                      setState(() {
                        quantity1++;
                        cartItems.add("Item2");
                      });
                    },  icon: Icon(Icons.add), style: IconButton.styleFrom(backgroundColor: Colors.deepOrangeAccent, foregroundColor: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Item3',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        if (quantity2>0) quantity2--;
                        cartItems.remove("Item3");
                      });
                    }, icon: Icon(Icons.remove), style: IconButton.styleFrom(backgroundColor: Colors.blueGrey ,foregroundColor: Colors.white),),
                    SizedBox(width: 8,),
                    Text(quantity2.toString(), style: TextStyle(fontSize: 20),),
                    SizedBox(width: 8,),
                    IconButton(onPressed: (){
                      setState(() {
                        quantity2++;
                        cartItems.add("Item3");
                      });
                    },  icon: Icon(Icons.add), style: IconButton.styleFrom(backgroundColor: Colors.deepOrangeAccent, foregroundColor: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Item4',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        if (quantity3>0) quantity3--;
                        cartItems.remove("Item4");
                      });
                    }, icon: Icon(Icons.remove), style: IconButton.styleFrom(backgroundColor: Colors.blueGrey ,foregroundColor: Colors.white),),
                    SizedBox(width: 8,),
                    Text(quantity3.toString(), style: TextStyle(fontSize: 20),),
                    SizedBox(width: 8,),
                    IconButton(onPressed: (){
                      setState(() {
                        quantity3++;
                        cartItems.add("Item4");
                      });
                    },  icon: Icon(Icons.add), style: IconButton.styleFrom(backgroundColor: Colors.deepOrangeAccent, foregroundColor: Colors.white)),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Item5',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        if (quantity4>0) quantity4--;
                        cartItems.remove("Item5");
                      });
                    }, icon: Icon(Icons.remove), style: IconButton.styleFrom(backgroundColor: Colors.blueGrey ,foregroundColor: Colors.white),),
                    SizedBox(width: 8,),
                    Text(quantity4.toString(), style: TextStyle(fontSize: 20),),
                    SizedBox(width: 8,),
                    IconButton(onPressed: (){
                      setState(() {
                        quantity4++;
                        cartItems.add("Item5");
                      });
                    }, icon: Icon(Icons.add), style: IconButton.styleFrom(backgroundColor: Colors.deepOrangeAccent, foregroundColor: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
