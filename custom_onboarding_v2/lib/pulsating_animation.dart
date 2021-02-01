import 'package:flutter/material.dart';

class PulsatingCircleIconButton extends StatefulWidget {
  Widget widget;
  Function onPress;
  dynamic selected;
  PulsatingCircleIconButton({this.widget, this.onPress, this.selected});

  @override
  _PulsatingCircleIconButtonState createState() =>
      _PulsatingCircleIconButtonState();
}

class _PulsatingCircleIconButtonState extends State<PulsatingCircleIconButton>
    with SingleTickerProviderStateMixin {
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
    super.initState();

    if(widget.selected){
      this.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(180),
      onTap: () {},
      child: AnimatedBuilder(
          // animation: _animationController,
          animation: _animation,
          builder: (context, _) {
            return GestureDetector(
              onTap: widget.onPress,
              child: Ink(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      for (int i = 1; i <= 2; i++)
                        BoxShadow(
                            color: Colors.white
                                .withOpacity(_animationController.value / 2),
                            spreadRadius: _animation.value * i),
                    ]),
                child: widget.widget,
              ),
            );
          }),
    );
  }
}
