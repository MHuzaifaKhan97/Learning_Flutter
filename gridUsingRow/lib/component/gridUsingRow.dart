import 'package:flutter/material.dart';

class GridUsingRow extends StatefulWidget {
  @override
  _GridUsingRowState createState() => _GridUsingRowState();
}

class _GridUsingRowState extends State<GridUsingRow> {
  Widget _gridItem(
      {String text,
      Icon icon,
      Color backgroundColor,
      double maxRadius,
      double minRadius}) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        CircleAvatar(
          maxRadius: maxRadius,
          minRadius: minRadius,
          backgroundColor: backgroundColor,
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        width: width * 0.9,
        height: height * 0.5,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        // child: Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           _gridItem(
        //             text: 'Grid Item One',
        //             backgroundColor: Colors.green,
        //             icon: Icon(
        //               Icons.mail,
        //               color: Colors.white,
        //               size: 35,
        //             ),
        //             maxRadius: height * 0.05,
        //             minRadius: height * 0.035,
        //           ),
        //           _gridItem(
        //             text: 'Grid Item Two',
        //             backgroundColor: Colors.green,
        //             icon: Icon(
        //               Icons.dashboard,
        //               size: 35,
        //               color: Colors.white,
        //             ),
        //             maxRadius: height * 0.05,
        //             minRadius: height * 0.035,
        //           ),
        //         ],
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 8),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           _gridItem(
        //             text: 'Grid Item Three',
        //             backgroundColor: Colors.green,
        //             icon: Icon(
        //               Icons.handyman,
        //               color: Colors.white,
        //               size: 35,
        //             ),
        //             maxRadius: height * 0.05,
        //             minRadius: height * 0.035,
        //           ),
        //           _gridItem(
        //             text: 'Grid Item Four',
        //             backgroundColor: Colors.green,
        //             icon: Icon(
        //               Icons.sanitizer,
        //               color: Colors.white,
        //               size: 35,
        //             ),
        //             maxRadius: height * 0.05,
        //             minRadius: height * 0.035,
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _gridItem(
                    text: 'Grid Item 1',
                    backgroundColor: Colors.green,
                    icon: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    maxRadius: height * 0.04,
                    minRadius: height * 0.03,
                  ),
                  _gridItem(
                    text: 'Grid Item 2',
                    backgroundColor: Colors.green,
                    icon: Icon(
                      Icons.dashboard,
                      color: Colors.white,
                    ),
                    maxRadius: height * 0.04,
                    minRadius: height * 0.03,
                  ),
                  _gridItem(
                    text: 'Grid Item 3',
                    backgroundColor: Colors.green,
                    icon: Icon(
                      Icons.g_translate,
                      color: Colors.white,
                    ),
                    maxRadius: height * 0.04,
                    minRadius: height * 0.03,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _gridItem(
                    text: 'Grid Item 4',
                    backgroundColor: Colors.green,
                    icon: Icon(
                      Icons.baby_changing_station,
                      color: Colors.white,
                    ),
                    maxRadius: height * 0.04,
                    minRadius: height * 0.03,
                  ),
                  _gridItem(
                    text: 'Grid Item 5',
                    backgroundColor: Colors.green,
                    icon: Icon(
                      Icons.handyman,
                      color: Colors.white,
                    ),
                    maxRadius: height * 0.04,
                    minRadius: height * 0.03,
                  ),
                  _gridItem(
                    text: 'Grid Item 6',
                    backgroundColor: Colors.green,
                    icon: Icon(
                      Icons.sanitizer,
                      color: Colors.white,
                    ),
                    maxRadius: height * 0.04,
                    minRadius: height * 0.03,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _gridItem(
                    text: 'Grid Item 7',
                    backgroundColor: Colors.green,
                    icon: Icon(
                      Icons.tab_rounded,
                      color: Colors.white,
                    ),
                    maxRadius: height * 0.04,
                    minRadius: height * 0.03,
                  ),
                  _gridItem(
                    text: 'Grid Item 8',
                    backgroundColor: Colors.green,
                    icon: Icon(
                      Icons.save,
                      color: Colors.white,
                    ),
                    maxRadius: height * 0.04,
                    minRadius: height * 0.03,
                  ),
                  _gridItem(
                    text: 'Grid Item 9',
                    backgroundColor: Colors.green,
                    icon: Icon(
                      Icons.verified,
                      color: Colors.white,
                    ),
                    maxRadius: height * 0.04,
                    minRadius: height * 0.03,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
