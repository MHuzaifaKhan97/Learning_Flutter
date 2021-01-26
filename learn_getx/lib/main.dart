import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:learn_getx/screens/detail/binding/detail_binding.dart';
import 'package:learn_getx/screens/home/binding/home_binding.dart';
import './screens/home/view/home.dart';
import './screens/detail/view/detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: '/home', page: ()=> HomeScreen(),binding: HomeBinding()),
        GetPage(name: '/detail', page: ()=> DetailScreen(), binding: DetailBinding()),
      ],
      initialRoute: '/home',
      // home: HomeScreen(),
    );
  }
}
