import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './theme/theme_service.dart';

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
                child: Text('Change Theme'),
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
            
            
            ]),
      ),
    );
  }
}
