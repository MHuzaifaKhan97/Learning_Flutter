import 'package:flutter/material.dart';
// import './widgets/1_safeArea.dart';
// import './widgets/2_expanded.dart';
// import './widgets/3_wrap.dart';
import './widgets/4_animatedContainer.dart';

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
      home: AnimatedContainerExample(),
      // Scaffold(
      //   appBar: AppBar(
      //     title: Text(
      //       'Flutter Widgets',
      //     ),
      //   ),
      //   body: Container(
      //     child: Column(
      //       children: <Widget>[],
      //     ),
      //   ),
      // ),
    );
  }
}
