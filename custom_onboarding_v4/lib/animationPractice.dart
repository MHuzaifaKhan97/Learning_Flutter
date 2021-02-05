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
  GlobalKey _one = GlobalKey();
  GlobalKey _two = GlobalKey();
  Size widgetSize;
  Offset widgetPosition;

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
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
    WidgetsBinding.instance.addPostFrameCallback((_) => getSizeAndPosition());
  }

  // _afterLayout(_) {
  // }

  getSizeAndPosition() async {
    RenderBox _cardBox = _one.currentContext.findRenderObject();
    widgetSize = _cardBox.size;
    widgetPosition = _cardBox.localToGlobal(Offset.zero);
    print(widgetSize);
    print(widgetPosition.dx);
    print(widgetPosition.dy);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // AnimationController controller;
    Animation<Offset> offset;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          key: _one,
          onTap: () {
            overlay = showOverlay(
              context,
              OnboardingScreen(
                offset: widgetPosition,
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      removeOverLay(overlay);
                    },
                    icon: Icon(
                      Icons.home,
                    ),
                  ),
                ),
                animatedPositionLeft: -width * 0.10,
                animatedPositionTop: -height * 0.044,
                childPositionTop: height * 0.040,
                childPositionLeft: -width * 0.48,
              ),
            );
          },
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    color: Colors.orange.withOpacity(0.8)),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Icon(
                    Icons.home,
                  ),
                ),
              ),
            ],
          ),
        ),

        GestureDetector(
          key: _two,
          onTap: () {
            overlay = showOverlay(
              context,
              OnboardingScreen(
                offset: widgetPosition,
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      removeOverLay(overlay);
                    },
                    icon: Icon(
                      Icons.notifications,
                    ),
                  ),
                ),
                animatedPositionRight: -width * 0.80,
                animatedPositionTop: -height * 0.044,
                childPositionTop: height * 0.040,
                childPositionLeft: width * 0.5,
              ),
            );
          },
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    color: Colors.orange.withOpacity(0.8)),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Icon(
                    Icons.notifications,
                  ),
                ),
              ),
            ],
          ),
        ),

        // GestureDetector(
        //   key: _two,
        //   onTap: () {
        //     overlay = showOverlay(
        //       context,
        //       OnboardingScreen(
        //         key: _one,
        //         offset: widgetPosition,
        //         child: Container(
        //           padding: EdgeInsets.all(20),
        //           child: Text('Hello'),
        //         ),
        //         animatedPositionRight: width * 0.10,
        //         animatedPositionTop: -height * 0.044,
        //         childPositionTop: height * 0.040,
        //         childPositionLeft: -width * 0.48,
        //       ),
        //     );
        //   },
        //   child: Row(
        //     children: <Widget>[
        //       Container(
        //         margin: EdgeInsets.all(10),
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(360),
        //             color: Colors.orange.withOpacity(0.8)),
        //         child: Container(
        //           padding: EdgeInsets.all(20),
        //           child: GestureDetector(
        //             child: Text(
        //               'Hello',
        //             ),
        //             // onTap: () {
        //             //   removeOverLay(overlay);
        //             // },
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({
    @required this.child,
    @required this.offset,
    this.animatedPositionLeft = 0.0,
    this.animatedPositionRight = 0.0,
    this.animatedPositionTop = 0.0,
    this.animatedPositionBottom = 0.0,
    this.childPositionLeft = 0.0,
    this.childPositionRight = 0.0,
    this.childPositionTop = 0.0,
    this.childPositionBottom = 0.0,
    this.key,
  });
  dynamic child;
  Offset offset;
  dynamic animatedPositionLeft;
  dynamic animatedPositionRight;
  dynamic animatedPositionTop;
  dynamic animatedPositionBottom;
  dynamic childPositionLeft;
  dynamic childPositionRight;
  dynamic childPositionTop;
  dynamic childPositionBottom;
  GlobalKey key;

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  bool isSelected = false;
  // Offset offset;
  @override
  void initState() {
    super.initState();
    print('widget.offset');
    print(widget.offset);

    Future.delayed(Duration(milliseconds: 500)).then((value) => {
          setState(() {
            isSelected = !isSelected;
          })
        });

    // Future.delayed(Duration(milliseconds: 10000)).then((value) => {
    //       setState(() {
    //         isSelected = !isSelected;
    //       })
    //     });
  }

  @override
  Widget build(BuildContext context) {
    dynamic height = MediaQuery.of(context).size.height;
    dynamic width = MediaQuery.of(context).size.width;
    print('widget.animatedPositionRight');
    print(widget.animatedPositionRight);
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: height * 0.9,
        width: width,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: widget.animatedPositionLeft + widget.offset.dx,
              top: widget.animatedPositionTop,
              right: widget.animatedPositionRight,
              child: AnimatedContainer(
                width: isSelected ? height * 0.6 : 40.0,
                height: isSelected ? height * 0.6 : 40.0,
                alignment: Alignment.center,
                duration: Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  color: Colors.green.withOpacity(0.7),
                ),
              ),
            ),
            Visibility(
              visible: isSelected,
              child: Positioned(
                left: widget.childPositionLeft + widget.offset.dx,
                top: widget.childPositionTop,
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
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 15,
                            ),
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: widget.child,
                        ),
                      ),
                      shape: BoxShape.circle,
                      animate: true,
                      curve: Curves.linearToEaseOut,
                    ),
                    widget.animatedPositionRight == 0.0
                        ? Container(
                            margin: EdgeInsets.only(left: width * 0.3),
                            padding: EdgeInsets.all(15),
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.end,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: width * 0.3),
                                  child: Text(
                                    'This is My Title Area.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: width * 0.3, top: 10),
                                  child: Text(
                                    'This is the detail area \nwhere we can provide \nour detail.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Container(
                                  // margin: EdgeInsets.only(left: width * 0.3),
                                  child: Text(
                                    'This is My Title Area.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    'This is the detail area \nwhere we can provide \nour detail.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
