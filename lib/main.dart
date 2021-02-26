import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_tutorial/GetConnect%20&%20StateMixin/app.dart';

import 'Get View and Get Widget/my-app-getview.dart';
import 'Implementing Internationalization/messages.dart';

void main() async {
  await GetStorage.init();
  //runApp(MyApp());
  runApp(App());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      /// for multi languages
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      // home: NavigationFirstScreen(),
      //  home: CounterScreen(),
      //   home: NameScreen(),
      //   home: NameSecondScreen(),
      //  home: TranslationScreen(),
      //   home: MyInjectionApp(),
      //  home: ProductListViewScreen(),
      //    home: MyGetStorageApp(),
      home: MyAppGetView(),
    );
  }
}
