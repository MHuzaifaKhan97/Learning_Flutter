import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_languages/home.dart';
import 'package:getx_languages/translate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Messages(),
      // locale: Locale('en', 'US'), // locale: Get.deviceLocale us used to get mobile default language
      fallbackLocale: Locale('en', 'US'),
      title: 'Internationalization Practice',
      home: HomeScreen(),
    );
  }
}
