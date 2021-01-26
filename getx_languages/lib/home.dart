import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_languages/translate.dart';

import 'myController.dart';

class HomeScreen extends StatelessWidget {
  MyController myController = Get.put(MyController());

  Widget customButton(
    String param1,
    String param2,
    String buttonText,
  ) {
    return RaisedButton(
      onPressed: () {
        myController.changeLanguage(param1, param2);
      },
      child: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 40),
            ),
            customButton('ur','PK','Change To Urdu'),
            customButton('de','DE','Change To German'),
            customButton('fr','FR','Change To French'),
            customButton('hi','IN','Change To Hindi'),
            customButton('ar','SA','Change To Arabic'),
            customButton('en','US','Change To English'),
          ],
        ),
      ),
    );
  }
}
