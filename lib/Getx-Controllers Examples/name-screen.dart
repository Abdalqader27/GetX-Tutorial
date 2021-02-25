import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Getx-Controllers%20Examples/my-controller.dart';

// ignore: must_be_immutable
class NameScreen extends StatelessWidget {
  MyController myController=Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(title: Text("Name Screen ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Obx(() => Text(myController.student.name.toString())), RaisedButton(child: Text("upper"), onPressed: () => myController.toUpperCase())],
        ),
      ),
    );
  }
}
