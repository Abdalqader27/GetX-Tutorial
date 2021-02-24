import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CounterScreen extends StatelessWidget {
  var count = 0.obs;

  void increment() => count++;

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(title: Text("Counter Screen ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Obx(() => Text(count.toString())), RaisedButton(child: Text("increment"), onPressed: () => increment())],
        ),
      ),
    );
  }
}
