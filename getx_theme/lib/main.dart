import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import './home.dart';
import './theme/themes.dart';
import './theme/theme_service.dart';
import './detail.dart';

void main() async {

  //  we need to initialize the getstorage to get access to storage.
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeService().getThemeMode(),
      getPages: [
        GetPage(name: '/home', page: ()=> HomeScreen()),
        GetPage(name: '/detail', page: ()=> DetailScreen()),
      ],
    );
  }
}
