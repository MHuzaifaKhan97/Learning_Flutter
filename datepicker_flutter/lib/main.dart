import 'package:flutter/material.dart';
// import './defaultDatePicker.dart';
import 'customDatePicker.dart';
// import 'customDatePicker2.dart';
// import 'customDatePicker3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CustomDatePicker(),
    );
  }
}
