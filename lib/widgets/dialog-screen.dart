import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("Show Dialog"),
                onPressed: () {
                  Get.defaultDialog(
                      onConfirm: () => Get.back(),
                      onCancel: () {},
                      title: "title",
                      middleText: "middle text",
                      textCancel: "cancel",
                      textConfirm: "confirm",
                      content: CircularProgressIndicator(),
                      radius: 20,
                      barrierDismissible: false,
                      confirmTextColor: Colors.white);
                })
          ],
        ),
      ),
    );
  }
}
