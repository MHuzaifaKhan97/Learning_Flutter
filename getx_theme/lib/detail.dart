import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './theme/theme_service.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Theme'),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Detail Screen',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
