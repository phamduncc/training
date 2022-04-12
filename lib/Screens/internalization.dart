import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Internalization extends StatelessWidget {
  const Internalization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Internazatiol")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('title'.tr),
            TextButton(onPressed: (){
              Get.updateLocale(Locale("vi","VN"));
            }, child: Text("Translate to Vietnamese")),
            TextButton(onPressed: (){
              Get.updateLocale(Locale("en","US"));
            }, child: Text("Translate to English")),
            TextButton(onPressed: (){
              Get.updateLocale(Locale("de","DE"));
            }, child: Text("Translate to German"))
          ],
        ),
      ),

    );
  }
}
