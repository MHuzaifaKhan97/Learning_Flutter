import 'package:flutter/material.dart';

class SafeAreaExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('SafeArea'),
      // ),
      body: SafeArea(
        // bottom: true,
        // maintainBottomViewPadding: true,
        // right: true,
        // left: true,
        child: Container(
          color: Colors.blue,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'SafeArea Example',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
