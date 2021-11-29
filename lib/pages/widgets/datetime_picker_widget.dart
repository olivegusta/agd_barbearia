import 'dart:ui';

import 'package:agd_barbearia/pages/widgets/button_widget.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class DatetimePickerWidget extends StatefulWidget {
  @override
  _DatetimePickerWidgetState createState() => _DatetimePickerWidgetState();
}

class _DatetimePickerWidgetState extends State<DatetimePickerWidget> {
  DateTime dateTime;
  DateTime selecteDate = DateTime.now();
  final firstDate = DateTime(2010, 1);
  final lastDate = DateTime(2022, 12);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 10),
      Text(
        '$selecteDate',
        style: TextStyle(fontSize: 24),
      ),
    ]);
  }
}
