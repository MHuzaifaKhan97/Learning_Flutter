import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class AnimationPractice extends StatefulWidget {
  @override
  _AnimationPracticeState createState() => _AnimationPracticeState();
}

class _AnimationPracticeState extends State<AnimationPractice> {
  bool selected = false;
  bool overlayVisible = false;
  var overlay;

  OverlayEntry showOverlay(BuildContext context, Widget child) {
    overlayVisible = true;
    var overlayState = Overlay.of(context);

    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 0.0,
        child: child,
      ),
    );

    overlayState.insert(overlayEntry);

    return overlayEntry;
  }

  overLayVisible() {
    return overlayVisible;
  }

  removeOverLay(OverlayEntry overlayEntry) {
    overlayEntry.remove();
    overlayVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            overlay = showOverlay(
              context,
              OnboardingScreen(
                child: IconButton(
                  onPressed: () {
                    removeOverLay(overlay);
                  },
                  icon: Icon(
                    Icons.home,
                  ),
                ),
              ),
            );
          },
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    color: Colors.orange.withOpacity(0.8)),
                child: Container(
                  child: Icon(
                    Icons.home,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({@required this.child});
  final Widget child;

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<Offset> offset;
  bool isSelected = false;
  // Offset offset;
  @override
  void initState() {
    super.initState();
    // controller = AnimationController(
    //     vsync: this, duration: Duration(milliseconds: 2000));
    // offset = Tween<Offset>(begin: Offset(0.0, 0.0), end: Offset(4.0, 4.0))
    //     .animate(controller);
    // Duration(milliseconds: 500,);
    Future.delayed(Duration(milliseconds: 500)).then((value) => {
          setState(() {
            isSelected = !isSelected;
          })
        });

    Future.delayed(Duration(milliseconds: 10000)).then((value) => {
          setState(() {
            isSelected = !isSelected;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    dynamic height = MediaQuery.of(context).size.height;
    dynamic width = MediaQuery.of(context).size.width;

    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: height * 0.9,
        width: width,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: -20,
              top: -50,
              child: AnimatedContainer(
                width: isSelected ? height * 0.6 : 40.0,
                height: isSelected ? height * 0.6 : 40.0,
                alignment: Alignment.center,
                duration: Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width),
                  color: Colors.green.withOpacity(0.7),
                ),
              ),
            ),
            Visibility(
              visible: isSelected,
              child: Positioned(
                top: height * 0.03,
                left: width * 0.05,
                child: Column(
                  children: [
                    AvatarGlow(
                      startDelay: Duration(milliseconds: 1000),
                      glowColor: Colors.white,
                      endRadius: 90.0,
                      duration: Duration(milliseconds: 2000),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: Duration(milliseconds: 20),
                      child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        color: Colors.orange.withOpacity(0.8),
                        child: Container(
                          margin: EdgeInsets.only(),
                          // right:width* 0.9,
                          child: widget.child,
                        ),
                      ),
                      shape: BoxShape.circle,
                      animate: true,
                      curve: Curves.linearToEaseOut,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'This is My Title Area.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'This is the detail area \nwhere we can provide \nour detail.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
