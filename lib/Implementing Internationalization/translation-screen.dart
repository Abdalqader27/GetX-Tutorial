import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Translator")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hello'.tr),
            RaisedButton(child: Text("To Arabic"), onPressed: () => Get.updateLocale(Locale('ar', 'SY'))),
            RaisedButton(child: Text("To English"), onPressed: () => Get.updateLocale(Locale('en', 'US'))),
          ],
        ),
      ),
    );
  }
}
