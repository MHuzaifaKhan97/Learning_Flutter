import 'package:flutter/material.dart';
import 'dialogs/datePickerDialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  String result;
  MyHomePage({this.result = ""});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Dialog Date Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Picked Date: ${widget.result}',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          dynamic expected = await showDialog(
              context: context, builder: (context) => DatePickerDialog());
          if (expected != null) {
            setState(() {
              widget.result = expected;
            });
          } else {
            return;
          }
          print(widget.result);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
