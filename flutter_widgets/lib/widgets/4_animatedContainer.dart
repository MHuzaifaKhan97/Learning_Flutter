import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  changeAnimation() {
    setState(() {
      final random = Random();
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer Demo'),
        ),
        body: Center(
          child: AnimatedContainer(
            // width: _width,
            // height: _height,
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            duration: Duration(seconds: 2),
            curve: Curves.easeIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: changeAnimation,
        ),
      ),
    );
  }
}

// we can animated
// - Border
// - Border Radii
// - Background Images
// - Shoadows
// - Gradient
// - Shapes
// - Padding
// - Width/Height
// - Alignment, Transforms and more.
