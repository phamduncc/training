import 'package:counter_app/Controller/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Contents/SnackBar_Dialog.dart';
class SecondScreen extends StatelessWidget {
  final Controller c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SnackBar_Dialog(c: c),
    );
  }
}

