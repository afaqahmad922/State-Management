import 'package:flutter/material.dart';

class state_Management extends StatefulWidget {
  const state_Management({super.key});

  @override
  State<state_Management> createState() => _state_ManagementState();
}

class _state_ManagementState extends State<state_Management> {
  bool isFavourite = false;
  bool isFavourite1 = false;
  bool isFavourite2 = false;
  int quantity = 0;
  int quantity2 = 0;
  int quantity3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
        title: Text(
          'State Management',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Favourite Button',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isFavourite = !isFavourite;
                    });
                  },
                  icon: Icon(
                    isFavourite ? Icons.favorite : Icons.favorite_outline,
                    color: isFavourite ? Colors.redAccent : Colors.tealAccent,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Favourite Button',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isFavourite1 = ! isFavourite1;
                    });
                  },
                  icon: Icon(
                    isFavourite1 ? Icons.favorite : Icons.favorite_outline,
                    color: isFavourite1 ? Colors.redAccent : Colors.tealAccent,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Favourite Button',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isFavourite2 = ! isFavourite2;
                    });
                  },
                  icon: Icon(
                    isFavourite2 ? Icons.favorite : Icons.favorite_outline,
                    color: isFavourite2 ? Colors.redAccent : Colors.tealAccent,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Divider(
              color: Colors.tealAccent,
              thickness: 1,
            ),
          ),
          Center(child: Text('Quantity Stepper', style: TextStyle(fontSize: 20, color: Colors.teal),),),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    if (quantity>0) quantity--;
                  });
                }, icon: Icon(Icons.remove)),
                Text(quantity.toString(), style: TextStyle(fontSize: 20),),
                IconButton(onPressed: (){
                  setState(() {
                    quantity++;
                  });
                }, icon: Icon(Icons.add)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    if (quantity2>0) quantity2--;
                  });
                }, icon: Icon(Icons.remove)),
                Text(quantity2.toString(), style: TextStyle(fontSize: 20),),
                IconButton(onPressed: (){
                  setState(() {
                    quantity2++;
                  });
                }, icon: Icon(Icons.add)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    if (quantity3>0) quantity3--;
                  });
                }, icon: Icon(Icons.remove)),
                Text(quantity3.toString(), style: TextStyle(fontSize: 20),),
                IconButton(onPressed: (){
                  setState(() {
                    quantity3++;
                  });
                }, icon: Icon(Icons.add)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
