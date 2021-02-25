import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my-controller.dart';

// ignore: must_be_immutable
class NameSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(title: Text("Object Second Screen ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<MyController>(
              init: MyController(),
              builder: (data) => Column(
                children: [
                  Text(data.student.name.toString()),
                  ///   you can replace this
                  //   RaisedButton(child: Text("upper"), onPressed: () => data.toUpperCase())
                ],
              ),
            ),
            RaisedButton(child: Text("upper"), onPressed: () => Get.find<MyController>().toUpperCase())
          ],
        ),
      ),
    );
  }
}
