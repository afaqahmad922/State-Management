import 'package:flutter/material.dart';

class add_Cart extends StatefulWidget {
  const add_Cart({super.key});

  @override
  State<add_Cart> createState() => _add_CartState();
}

class _add_CartState extends State<add_Cart> {
  int cartCount = 0;
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
                Text('Check', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.tealAccent,
                        ),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
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
                            cartCount.toString(),
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
            child: Divider(
              color: Colors.black,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Item1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                IconButton(onPressed: (){
                  setState(() {
                    cartCount++;
                  });
                }, icon: Icon(Icons.add), style: IconButton.styleFrom(backgroundColor: Colors.yellowAccent)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Item1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                IconButton(onPressed: (){
                  setState(() {
                    cartCount++;
                  });
                }, icon: Icon(Icons.add), style: IconButton.styleFrom(backgroundColor: Colors.blue)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Item1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                IconButton(onPressed: (){
                  setState(() {
                    cartCount++;
                  });
                }, icon: Icon(Icons.add), style: IconButton.styleFrom(backgroundColor: Colors.pinkAccent)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Item1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                IconButton(onPressed: (){
                  setState(() {
                    cartCount++;
                  });
                }, icon: Icon(Icons.add), style: IconButton.styleFrom(backgroundColor: Colors.tealAccent)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Item1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                IconButton(onPressed: (){
                  setState(() {
                    cartCount++;
                  });
                }, icon: Icon(Icons.add), style: IconButton.styleFrom(backgroundColor: Colors.greenAccent)),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                cartCount = 0;
              });
            },
            style: IconButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),
            child: Text("Clear Cart"),
          )
        ],
      ),
    );
  }
}
