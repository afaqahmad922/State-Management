import 'package:flutter/material.dart';
import 'package:get/get.dart';

class get_X extends StatefulWidget {
  const get_X({super.key});

  @override
  State<get_X> createState() => _get_XState();
}

class _get_XState extends State<get_X> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 60, right: 24),
              child: GestureDetector(
                onTap: (){
                  Get.defaultDialog(
                    contentPadding: EdgeInsets.all(10),
                    titlePadding: EdgeInsets.only(top: 20),
                    title: 'Close Dialog',
                    middleText: 'Are you Sure you want to Close',
                    textConfirm: 'Yes', onConfirm: (){
                      Get.back();
                  },
                    textCancel: 'No', onCancel: (){
                      Get.back();
                  }
                  );
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Click to Show\n Dialog", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
                        Icon(Icons.smart_button, size: 50,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 20, right: 24),
              child: GestureDetector( onTap: () {
                Get.bottomSheet(
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 20, right: 24),
                    child: Container(
                      color: Colors.blueGrey,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Light Mode', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                                    GestureDetector( onTap: (){
                                      Get.changeTheme(ThemeData.light());
                                    },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black
                                        ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(Icons.lightbulb, size: 30, color: Colors.yellow,),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 25,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Dark Mode', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                                    GestureDetector(
                                      onTap: (){
                                        Get.changeTheme(ThemeData.dark());
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.yellow
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(Icons.lightbulb, size: 30, color: Colors.black,),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                );
              },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Click to Show\nBottom Drawer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
                        Icon(Icons.smart_button, size: 50,)
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Testing",
            "Learning The GetX ",
            backgroundColor: Colors.grey,
            snackPosition: SnackPosition.TOP,
            icon: Icon(Icons.ac_unit_outlined),
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.face_2_outlined),
      ),
    );
  }
}
