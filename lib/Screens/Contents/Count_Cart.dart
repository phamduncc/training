import 'package:counter_app/Controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../internalization.dart';
import '../second_screen.dart';
class Count_Cart extends StatelessWidget {
  const Count_Cart({
    Key? key,
    required this.c,
  }) : super(key: key);

  final Controller c;

  @override
  Widget build(BuildContext context) {
    var x= c.count;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(()=>Text("Text: ${x}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),),
          FloatingActionButton(child: Icon(Icons.add), onPressed: (){x++;},),
          FloatingActionButton(child: Icon(Icons.title), onPressed: (){x--;},),
          ElevatedButton(
            onPressed: () { Get.to(SecondScreen()); },
            child: Text("Next screen"),),
          ElevatedButton(
            onPressed: () { Get.to(Internalization()); },
            child: Text("Go to Translate"),)
        ],

      ),
    );
  }
}
