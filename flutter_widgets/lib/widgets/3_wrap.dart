import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              // alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 20,
              direction: Axis.vertical,
              // runAlignment: WrapAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  child: Text(
                    'One',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  child: Text(
                    'Two',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Text(
                    'Three',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Text(
                    'Four',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.yellow,
                  child: Text(
                    'Five',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
