import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/navigation/navigation-first-screen.dart';

class NavigationThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation 3")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(child: Text("go to second screen"), onPressed: () => Get.back()),
            RaisedButton(child: Text("go to first screen"), onPressed: () =>Get.offAll(NavigationFirstScreen())),

          ],
        ),
      ),
    );
  }
}
