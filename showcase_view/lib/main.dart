import 'package:flutter/material.dart';
import 'package:showcase_view/showcase_widget.dart';
import 'package:showcaseview/showcaseview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Scaffold(
        body: ShowCaseWidget(
          builder: Builder(builder: (context) => ShowCaseExample()),
          autoPlay: false,
          autoPlayDelay: Duration(seconds: 3),
          autoPlayLockEnable: true,
        ),
      ),
    );
  }
}