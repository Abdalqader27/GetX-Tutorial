import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Dependecy%20Injection/my-inject-controller.dart';

class MyInjectionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Get.create<MyInjectionApp>(() =>MyInjectionApp());
    Get.putAsync<MyInjectController>(() async => MyInjectController(), tag: 'myInjection', permanent: true);
    return Scaffold(
      appBar: AppBar(title: Text("Counter Screen ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(child: Text("increment"), onPressed: () => Get.find<MyInjectController>(tag: 'myInjection').incrementCounter())
          ],
        ),
      ),
    );
  }
}
