import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

final PickerData = [
  {
    'id': '1',
    'name': '测试一下'
  },
  {
    'id': '2',
    'name': '另一个测试一下'
  }
];

var _scaffoldKey;

showPicker(BuildContext context) {
  Picker picker = new Picker(
      adapter: PickerDataAdapter<String>(
          pickerdata: PickerData),
      changeToFirst: true,
      textAlign: TextAlign.left,
      columnPadding: const EdgeInsets.all(8.0),
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.getSelectedValues());
      });
  picker.show(_scaffoldKey.currentState);
}

showPickerModal(BuildContext context) {
  new Picker(
      adapter: PickerDataAdapter<String>(
          pickerdata: PickerData),
      changeToFirst: true,
      hideHeader: false,
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.adapter.text);
      }).showModal(context); //_scaffoldKey.currentState);
}

showPickerIcons(BuildContext context) {
  new Picker(
      adapter: PickerDataAdapter(data: [
        new PickerItem(text: Icon(Icons.add), value: Icons.add, children: [
          new PickerItem(text: Icon(Icons.more)),
          new PickerItem(text: Icon(Icons.aspect_ratio)),
          new PickerItem(text: Icon(Icons.android)),
          new PickerItem(text: Icon(Icons.menu)),
        ]),
        new PickerItem(text: Icon(Icons.title), value: Icons.title, children: [
          new PickerItem(text: Icon(Icons.more_vert)),
          new PickerItem(text: Icon(Icons.ac_unit)),
          new PickerItem(text: Icon(Icons.access_alarm)),
          new PickerItem(text: Icon(Icons.account_balance)),
        ]),
        new PickerItem(text: Icon(Icons.face), value: Icons.face, children: [
          new PickerItem(text: Icon(Icons.add_circle_outline)),
          new PickerItem(text: Icon(Icons.add_a_photo)),
          new PickerItem(text: Icon(Icons.access_time)),
          new PickerItem(text: Icon(Icons.adjust)),
        ]),
        new PickerItem(
            text: Icon(Icons.linear_scale),
            value: Icons.linear_scale,
            children: [
              new PickerItem(text: Icon(Icons.assistant_photo)),
              new PickerItem(text: Icon(Icons.account_balance)),
              new PickerItem(text: Icon(Icons.airline_seat_legroom_extra)),
              new PickerItem(text: Icon(Icons.airport_shuttle)),
              new PickerItem(text: Icon(Icons.settings_bluetooth)),
            ]),
        new PickerItem(text: Icon(Icons.close), value: Icons.close),
      ]),
      title: new Text("Select Icon"),
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.getSelectedValues());
      }).show(_scaffoldKey.currentState);
}

showPickerDialog(BuildContext context) {
  new Picker(
      adapter: PickerDataAdapter<String>(
          pickerdata: PickerData),
      hideHeader: true,
      title: new Text("Select Data"),
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.getSelectedValues());
      }).showDialog(context);
}

showPickerArray(BuildContext context) {
  new Picker(
      adapter: PickerDataAdapter<String>(
          pickerdata: PickerData, isArray: true),
      hideHeader: true,
      title: new Text("Please Select"),
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.getSelectedValues());
      }).showDialog(context);
}

showPickerNumber(BuildContext context) {
  new Picker(
      adapter: NumberPickerAdapter(data: [
        NumberPickerColumn(begin: 0, end: 999),
        NumberPickerColumn(begin: 100, end: 200),
      ]),
      delimiter: [
        PickerDelimiter(
            child: Container(
          width: 30.0,
          alignment: Alignment.center,
          child: Icon(Icons.more_vert),
        ))
      ],
      hideHeader: true,
      title: new Text("Please Select"),
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.getSelectedValues());
      }).showDialog(context);
}
