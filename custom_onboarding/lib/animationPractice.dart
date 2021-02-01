import 'package:flutter/material.dart';

class AnimationPractice extends StatefulWidget {
  @override
  _AnimationPracticeState createState() => _AnimationPracticeState();
}

class _AnimationPracticeState extends State<AnimationPractice> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Positioned(
          left: -20,
          top: -50,
          child: AnimatedContainer(
            width: selected ? height * 0.6 : 100.0,
            height: selected ? height * 0.5 : 100.0,
            // color: selected ? Colors.red : Colors.blue,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
            // child: Container(

            // ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width),
              color: selected ? Colors.red : Colors.white,
            ),
          ),
        ),
        Visibility(
          // visible: selected ? true : false,
          child: Positioned(
            top: height * 0.03,
            left: width * 0.05,
            child: Container(
              width: selected ? 100 : 100.0,
              height: selected ? 100 : 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: Visibility(
                // visible: selected ? false : true,
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.black,
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
