import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/GetConnect%20&%20StateMixin/routes/app_pages.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
