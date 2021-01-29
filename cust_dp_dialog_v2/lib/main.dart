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
  DateTime result;
  MyHomePage({this.result});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
 
 
  @override
  void initState() {
    if (widget.result == null){
     widget.result = DateTime.now(); 
    }
    super.initState();
  }
 
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
          DateTime expected = await showDialog(
            context: context,
            builder: (context) => DatePickerDialog(
              initialDate: DateTime.now(),
              firstDate: DateTime(2020,5,1),
              lastDate: DateTime.now(),
              ),
          );
          print(expected);
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
