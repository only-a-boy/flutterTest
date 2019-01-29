import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _DatePickerState();
  }
}

class _DatePickerState extends State<DatePicker> {
  DateTime _dateTime;

  TimeOfDay _time;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('时间控件示例'),
        ),
        body: new Center(
            child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(10.0),
              child: new RaisedButton(
                child: new Text('日期控件'),
                onPressed: _showDatePicker,
              ),
            ),
            new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Text(_dateTime == null ? '选择日期' : _dateTime.toString())
            ),
            new Padding(
              padding: new EdgeInsets.all(10.0),
              child: new RaisedButton(
                child: new Text('时间控件'),
                onPressed: _showTimePicker,
              ),
            ),
            new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Text(_time == null ? '选择时间' : _time.toString()))
          ],
        )));
  }

  void _showDatePicker() {
    this.setState(() {
      _selectDate(context);
    });
  }

  Future<Null> _selectDate(BuildContext context) async {
    await showDatePicker(
            context: context,
            initialDate: new DateTime.now(),
            firstDate: new DateTime(2010),
            lastDate: new DateTime(2050)
            // lastDate: new DateTime.now().add(new Duration(days: 30)),
            )
        .then((DateTime val) {
      if (val != null) {
        print(val);

        setState(() {
          _dateTime = val;
        });
      }
    }).catchError((err) {
      print(err);
    });
  }

  void _showTimePicker() {
    this.setState(() {
      _selectTime(context);
    });
  }

  Future<Null> _selectTime(BuildContext context) async {
    await showTimePicker(
      context: context,
      initialTime: new TimeOfDay.now(),
    ).then((val) {
      if (val != null) {
        print(val);

        setState(() {
          _time = val;
        });
      }
    }).catchError((err) {
      print(err);
    });
  }
}
