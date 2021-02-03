import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class ShowCaseExample extends StatefulWidget {
  @override
  _ShowCaseExampleState createState() => _ShowCaseExampleState();
}

class _ShowCaseExampleState extends State<ShowCaseExample> {
  @override
  Widget build(BuildContext context) {
    GlobalKey _one = GlobalKey();
    GlobalKey _two = GlobalKey();
    GlobalKey _three = GlobalKey();

    WidgetsBinding.instance.addPostFrameCallback(
        (_) => ShowCaseWidget.of(context).startShowCase([_one, _two, _three]));
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction Application'),
        actions: <Widget>[
          Showcase(
            key: _one,
            description: 'Tap to see menu options',
            contentPadding: EdgeInsets.all(5),
            showArrow: false,
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          Showcase(
            key: _two,
            title: 'Profile',
            description: 'Tap to see profile',
            showcaseBackgroundColor: Colors.blueAccent,
            textColor: Colors.white,
            shapeBorder: CircleBorder(),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('./assets/profile.jpg'),
                ),
              ),
            ),
          ),
          Showcase(
            key: _three,
            title: 'Profile Name',
            description: 'This is detailed about profile',
            showcaseBackgroundColor: Colors.blueAccent,
            contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            titleTextStyle: TextStyle(color: Colors.yellow,fontSize: 22),
            descTextStyle: TextStyle(fontSize: 16,color: Colors.white),
            textColor: Colors.white,
            shapeBorder: CircleBorder(),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'This Is Detailed Section',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
