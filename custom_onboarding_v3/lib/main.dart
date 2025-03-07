import 'package:flutter/material.dart';
// import 'customOnboarding.dart';
import './animationPractice.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Onboard'),
        ),
        body: AnimationPractice(),
      ),
    );
  }
}
