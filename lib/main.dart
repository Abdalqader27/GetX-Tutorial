import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Fetch-Api-Example/Views/Product-List-view.dart';

import 'Implementing Internationalization/messages.dart';

void main() => runApp(MyApp());

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
      home: ProductListViewScreen(),
    );
  }
}
