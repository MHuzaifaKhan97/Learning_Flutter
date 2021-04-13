import 'package:drawer_swipe/drawer_swipe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var drawerKey = GlobalKey<SwipeDrawerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // add this line so you can add your appBar in Body
      extendBodyBehindAppBar: true,
      body: SwipeDrawer(
        radius: 5,
        key: drawerKey,
        hasClone: false,
        bodySize: 20,
        bodyBackgroundPeekSize: 30,
        backgroundColor: Colors.black.withOpacity(0.9),
        // pass drawer widget
        drawer: buildDrawer(),
        // pass body widget
        child: buildBody(),
      ),
    );
  }

  Widget buildDrawer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: ExactAssetImage('assets/c_contact.png')),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'M Huzaifa Khan',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text('Active Status',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 7),
          child: Column(
            children: drawerItems
                .map((element) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            element['icon'],
                            color: Colors.white,
                            size: 22,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(element['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14))
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Settings',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 2,
              height: 20,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Log out',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        // build your appBar
        AppBar(
          title: Text('AppBar title'),
          leading: InkWell(
              onTap: () {
                if (drawerKey.currentState.isOpened()) {
                  drawerKey.currentState.closeDrawer();
                } else {
                  drawerKey.currentState.openDrawer();
                }
              },
              child: Icon(Icons.menu)),
        ),
        // build your screen body
        Expanded(
          child: Container(
            color: Colors.white,
            child: Center(
              child: Text('Home Screen'),
            ),
          ),
        ),
      ],
    );
  }
}

List<Map> drawerItems = [
  {'icon': Icons.dashboard, 'title': 'Dashboard'},
  {'icon': Icons.ac_unit_sharp, 'title': 'Your Profile'},
  {'icon': Icons.account_balance, 'title': 'Accounts'},
  {'icon': Icons.payment, 'title': 'Payments'},
  {'icon': Icons.schedule, 'title': 'Schedule Payments'},
  {'icon': Icons.payments, 'title': 'Payee Management'},
  {'icon': Icons.history, 'title': 'E-Transaction History'},
  {
    'icon': Icons.insert_invitation_rounded,
    'title': 'Invite Friend/Family via QR'
  },
  {'icon': Icons.feedback, 'title': 'Feedback'},
];
