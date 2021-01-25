import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './theme/theme_service.dart';
import './detail.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Theme'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Home Screen",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              MaterialButton(
                child: Text(
                  'Change Theme',
                ),
                color: context.theme.buttonColor,
                onPressed: () {
                  // before getStorage
                  // Get.changeThemeMode(
                  //   Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                  // );
                  //
                  // after getStorage
                  ThemeService().changeThemeMode();
                },
              ),
              MaterialButton(
                child: Text(
                  'Goto Detail',
                ),
                color: context.theme.buttonColor,
                onPressed: () {
                  //  1. Navigate By Component
                  // Get.to(DetailScreen());
                  //  2. Navigate By Name
                  Get.toNamed('/detail');
                  //  3. Navigate to Never go back
                  // Get.off(DetailScreen());
                },
              ),
            ]),
      ),
    );
  }
}
