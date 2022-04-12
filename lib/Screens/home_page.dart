import 'package:counter_app/Controller/controller.dart';
import 'package:counter_app/Screens/internalization.dart';
import 'package:counter_app/Screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Contents/Count_Cart.dart';
class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.c,
  }) : super(key: key);

  final Controller c;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          height: 500,
          child: Column(
            children: [
              Obx(()=>Text(("${c.count}")),),
              FloatingActionButton(child: Icon(Icons.add), onPressed: c.increment,),
              FloatingActionButton(child: Icon(Icons.title), onPressed: c.subtract,),
              Count_Cart(c: c),
            ],
          )
    );
  }
}

