import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/navigation/navigation-third-screen.dart';

class NavigationSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation 2")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(Get.arguments.toString()),
              RaisedButton(child: Text("go to third screen"), onPressed: () =>  Get.to(NavigationThirdScreen())),
              RaisedButton(child: Text("Back To First Screen"), onPressed: () => Get.back(result: "this is result from 2 screen")),

        ],
      ),
    ),);
  }

}
