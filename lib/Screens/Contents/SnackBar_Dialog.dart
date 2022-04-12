import 'package:counter_app/Controller/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Api/user_provider.dart';

class SnackBar_Dialog extends StatelessWidget {
  const SnackBar_Dialog({
    Key? key,
    required this.c,
  }) : super(key: key);

  final Controller c;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Cout = ${c.count}\n ", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ElevatedButton(
            onPressed: () { Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark()); },
            child: Text("Dark mode"),),
          ElevatedButton(
            onPressed: () async{
              var id=8;
              var res = await UserProvider().getAllUser();
              // var x= res.statusCode;
              // print("${x}");
              if(res.statusCode==200){
                print(res.body.toString());
                Get.defaultDialog(
                  backgroundColor: Colors.tealAccent,
                  title: "Thong Bao",
                  content: Text("Thanh cong",),
                  actions: [
                    CupertinoDialogAction(child: Text("ok"),onPressed: (){Get.back();},),
                  ],
                );
              }
              else {
                Get.defaultDialog(
                  backgroundColor: Colors.tealAccent,
                  title: "Thong bao",
                  content: Text("Khong thanh cong!",),
                  actions: [
                    CupertinoDialogAction(child: Text("ok"),onPressed: (){Get.back();},),
                  ],
                );
              }

            },
            child: Text("Get All User"),),
          ElevatedButton(
            onPressed: () async{
              var id=1;
              var res = await UserProvider().putUser(id);
              // var x= res.statusCode;
              // print("${x}");
              if(res.statusCode==200){
                Get.defaultDialog(
                  backgroundColor: Colors.tealAccent,
                  title: "Thong Bao",
                  content: Text("Thanh cong",),
                  actions: [
                    CupertinoDialogAction(child: Text("ok"),onPressed: (){Get.back();},),
                  ],
                );
              }
              else {
                Get.defaultDialog(
                  backgroundColor: Colors.tealAccent,
                  title: "Thong bao",
                  content: Text("Khong thanh cong!",),
                  actions: [
                    CupertinoDialogAction(child: Text("ok"),onPressed: (){Get.back();},),
                  ],
                );
              }

            },
            child: Text("Get one User"),),
          ElevatedButton(
            onPressed: () async{
              var res = await UserProvider().postUsers();
              var x= res.statusCode;
              print("${x}");
                  if(res.statusCode==200|| res.statusCode==201){
                    Get.defaultDialog(
                      backgroundColor: Colors.tealAccent,
                      title: "Thong Bao",
                      content: Text("Ban da gui user thanh cong",),
                      actions: [
                        CupertinoDialogAction(child: Text("ok"),onPressed: (){Get.back();},),
                      ],
                    );
                  }
                  else {
                    Get.defaultDialog(
                      backgroundColor: Colors.tealAccent,
                      title: "Thong bao",
                      content: Text("Loi trong viec gui user",),
                      actions: [
                        CupertinoDialogAction(child: Text("ok"),onPressed: (){Get.back();},),
                      ],
                    );
                  }

            },
            child: Text("Post User"),),
          ElevatedButton(
            onPressed: () async{
              var id=1;
              var res = await UserProvider().deleteUser(id);
              // var x= res.statusCode;
              // print("${x}");
              if(res.statusCode==200){
                Get.defaultDialog(
                  backgroundColor: Colors.tealAccent,
                  title: "Thong Bao",
                  content: Text("Xoa thanh cong",),
                  actions: [
                    CupertinoDialogAction(child: Text("ok"),onPressed: (){Get.back();},),
                  ],
                );
              }
              else {
                Get.defaultDialog(
                  backgroundColor: Colors.tealAccent,
                  title: "Thong bao",
                  content: Text("Khong xoa dc",),
                  actions: [
                    CupertinoDialogAction(child: Text("ok"),onPressed: (){Get.back();},),
                  ],
                );
              }

            },
            child: Text("Delete User"),),
          ElevatedButton(
            onPressed: () async{
              var id=1;
              var res = await UserProvider().putUser(id);
              // var x= res.statusCode;
              // print("${x}");
              if(res.statusCode==200){
                Get.defaultDialog(
                  backgroundColor: Colors.tealAccent,
                  title: "Thong Bao",
                  content: Text("Update thanh cong",),
                  actions: [
                    CupertinoDialogAction(child: Text("ok"),onPressed: (){Get.back();},),
                  ],
                );
              }
              else {
                Get.defaultDialog(
                  backgroundColor: Colors.tealAccent,
                  title: "Thong bao",
                  content: Text("Update khong thanh cong!",),
                  actions: [
                    CupertinoDialogAction(child: Text("ok"),onPressed: (){Get.back();},),
                  ],
                );
              }

            },
            child: Text("Update User"),),
          ElevatedButton(
            onPressed: () {
              Get.snackbar(
                  "SnackBar",
                  "This is snackbar",
                  backgroundColor: Colors.tealAccent,
                  snackPosition: SnackPosition.BOTTOM);
            },
            child: Text("Open SnackBar"),),
          ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                backgroundColor: Colors.tealAccent,
                title: "confirm alert",
                content: Text("this is confirm alert.",),
                actions: [
                  CupertinoDialogAction(child: Text("ok"),onPressed: (){Get.back();},),
                ],
              );
            },
            child: Text("Open Alert"),),
          ElevatedButton(
            onPressed: () { Get.back(); },
            child: Text("Back Home"),),
        ],
      ),

    );
  }
}
