import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Get%20View%20and%20Get%20Widget/count-controller.dart';

//class MyAppGetView extends GetWidget<CountController> {
class MyAppGetView extends GetView<CountController> {

  @override
  Widget build(BuildContext context) {
    /// is Rebuilding  and change hash code
    //   Using this in Get View Get.put(CountController());
     Get.put(CountController());
    return Scaffold(
      appBar: AppBar(title: Text("Counter View Screen ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Obx(() => Text(controller.count.toString())), RaisedButton(child: Text("increment"), onPressed: () => controller.increment())],
        ),
      ),
    );
  }
}
