import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnackBar")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(child: Text("Show SnackBar"), onPressed: () => Get.snackbar("title snackBar", "this message by snack bar ", snackPosition: SnackPosition.BOTTOM, margin: EdgeInsets.all(10)))
          ],
        ),
      ),
    );
  }
}
