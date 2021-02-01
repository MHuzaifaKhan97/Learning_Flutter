import 'package:flutter/material.dart';

class CustomOnboarding extends StatefulWidget {
  @override
  _CustomOnboardingState createState() => _CustomOnboardingState();
}

class _CustomOnboardingState extends State<CustomOnboarding> {
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Container(
          width: height * 0.6,
          height: height * 0.5,
          // color: Colors.red,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200), color: Colors.red),
        ),
        Positioned(
          top: 100,
          left: 80,
          child: Container(
            width: height * 0.15,
            height: height * 0.15,
            // color: Colors.red,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200), color: Colors.white),
          ),
        ),
         Positioned(
           top: 120,
           left: 80,
           child: FlatButton(
            child: Icon(Icons.add,size: 70,),
            onPressed: (){},
          ), 
           ),
      ],
    );
  }
}
