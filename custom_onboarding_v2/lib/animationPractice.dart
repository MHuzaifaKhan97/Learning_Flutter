import 'package:custom_onboarding/pulsating_animation.dart';
import 'package:flutter/material.dart';

class AnimationPractice extends StatefulWidget {
  @override
  _AnimationPracticeState createState() => _AnimationPracticeState();
}

class _AnimationPracticeState extends State<AnimationPractice>
    with SingleTickerProviderStateMixin {
  bool selected = false;
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 0.0, end: 12.0).animate(_animationController);
    // _animation = Tween(begin: 0.0, end: 12.0).animate(_animationController);
    super.initState();

    // if(widget.selected){
    //   this.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Positioned(
          left: -20,
          top: -40,
          child: AnimatedContainer(
            width: selected ? height * 0.6 : 100.0,
            height: selected ? height * 0.55 : 100.0,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(180),
              color: selected ? Color(0xffbc75e0) : Colors.white,
            ),
          ),
        ),
        Positioned(
          top: height * 0.03,
          left: width * 0.05,
          child: InkWell(
            borderRadius: BorderRadius.circular(180),
            onTap: () {},
            child: AnimatedBuilder(
                // animation: _animationController,
                animation: _animation,
                builder: (context, _) {
                  return Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          for (int i = 1; i <= 2; i++)
                            BoxShadow(
                                color: Colors.white.withOpacity(
                                    _animationController.value / 2),
                                spreadRadius: _animation.value * i),
                        ]),
                    child: GestureDetector(
                      onTap: () {
                        if (selected == false) {
                          setState(() {
                            selected = !selected;
                          });
                          _animationController.repeat(reverse: true);
                        } else {
                          setState(() {
                            selected = !selected;
                          });
                          _animationController.reset();
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffbc75e0),
                        ),
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.home,
                          size: 30,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
