import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class DatePickerDialog extends StatefulWidget {
  @override
  _DatePickerDialogState createState() => _DatePickerDialogState();
}

class _DatePickerDialogState extends State<DatePickerDialog> {
  String _selectedDate;
  String _dateCount;
  String _range;
  String _rangeCount;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    print("args");
    print(args.value.toString().split(" ")[0]);
    setState(() {
      _selectedDate = args.value.toString().split(" ")[0];
    });
  }

  _buildChild(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.55,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(2))),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[],
            ),
          ),
          Positioned(
            left: 0,
            top: 30,
            right: 0,
            bottom: 0,
            child: Column(
              children: <Widget>[
                SfDateRangePicker(
                  allowViewNavigation: true,
                  onSelectionChanged: _onSelectionChanged,
                  selectionMode: DateRangePickerSelectionMode.single,
                  monthViewSettings:
                      DateRangePickerMonthViewSettings(viewHeaderHeight: 10),
                  headerStyle: DateRangePickerHeaderStyle(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        print('Cancel Pressed');
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'CANCEL',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop(_selectedDate);
                      },
                      child: Text(
                        'OK',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ));
}
