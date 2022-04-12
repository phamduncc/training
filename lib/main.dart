
import 'package:counter_app/Controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screens/home_page.dart';
import 'messages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      // translationsKeys: {
      //   'en_US': {'title': 'Hello World',},
      //   'de_DE': {'title': 'Hallo Welt',},
      //   'vi_VN': {'title': 'Hallo Welt',}
      // },
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'UK'),

      title: 'Counter Demo',
      home: Container(
        color: Colors.yellow,
          child: Column(
            children: [
              Obx(()=>Text(("${c.count}")),),
              FloatingActionButton(child: Icon(Icons.add), onPressed: c.increment,),
              FloatingActionButton(child: Icon(Icons.title), onPressed: c.subtract,),
              HomePage(c: c),
            ],
          )),
    );
  }
}

