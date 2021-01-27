import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.now();
  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      // initialEntryMode: DatePickerEntryMode.input,
      // initialDatePickerMode: DatePickerMode.year,
      // helpText: 'Select booking date', // Can be used as title
      // cancelText: 'Not now',
      // confirmText: 'Book',
      // errorFormatText: 'Enter valid date',
      // errorInvalidText: 'Enter date in valid range',
      // fieldLabelText: 'Booking date',
      // fieldHintText: 'Month/Date/Year',
      // builder: (context, child) {
      //   return Theme(
      //     data: ThemeData.dark(), // This will change to light theme.
      //     child: child,
      //   );
      // },
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
      ),
      body: Container(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "${selectedDate.toLocal()}".split(' ')[0],
                style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () => _selectDate(context), // Refer step 3
                child: Text(
                  'Select date',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                color: Colors.greenAccent,
              ),
            ],
          )
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text(
          //       'DatePicker Example',
          //       style: TextStyle(
          //         fontSize: 30,
          //       ),
          //     ),
          //     RaisedButton(
          //       child: Text('Open Picker'),
          //       onPressed: () {
          //         showDatePicker(
          //             context: context,
          //             initialDate: DateTime.now(),
          //             firstDate: DateTime(2000),
          //             lastDate: DateTime(2025));
          //       },
          //     ),
          //   ],
          // ),

          ),
    );
  }
}
