import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx-controller/my-controller.dart';

import 'my-builder-controller.dart';

// ignore: must_be_immutable
class BuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(title: Text("Builder  Screen ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyBuilderController>(
              init: MyBuilderController(),
              builder: (data) => Column(
                children: [
                  Text(data.student.name.toString()),
                  ///   you can replace this
                  //   RaisedButton(child: Text("upper"), onPressed: () => data.toUpperCase())
                ],
              ),
            ),
            RaisedButton(child: Text("upper"), onPressed: () => Get.find<MyBuilderController>().toUpperCase())
          ],
        ),
      ),
    );
  }
}
