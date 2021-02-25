import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/navigation/navigation-second-screen.dart';

class NavigationFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("go to second screen"),
                onPressed: () async {
                  var data = await Get.to(NavigationSecondScreen(),
                      transition: Transition.fade,
                      fullscreenDialog: true,
                      arguments: "arguments from screen 1 ",
                      curve: Curves.bounceIn,
                      duration: Duration(milliseconds: 500));
                  if (data != null)Get.snackbar(data,"message",snackPosition: SnackPosition.BOTTOM);
                })
          ],
        ),
      ),
    );
  }
}
