import 'package:agd_barbearia/main.dart';
import 'package:agd_barbearia/utils/common.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//import 'package:intl/date_symbol_data_custom.dart';
//import 'package:intl/date_symbol_data_local.dart';
//import 'package:intl/date_symbol_data_http_request.dart';
//import 'package:intl/intl.dart';
import 'package:agd_barbearia/pages/widgets/button_widget.dart';
import 'package:agd_barbearia/main.dart';
//import 'package:intl/date_symbol_data_local.dart';

DateTime selectedDate = DateTime.now();
final firstDate = DateTime(2010, 1);
final lastDate = DateTime(2023, 12);

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({Key key, this.text}) : super(key: key);

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();

  final String text;
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text('$selectedDate'.split(' ')[0], style: TextStyle(fontSize: 24)),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () => _openDatePicker(context),
          child: Text('Selecione a data'),
        ),
      ],
    );
  }
}

void _openDatePicker(BuildContext context) async {
  final DateTime date = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: firstDate,
    lastDate: lastDate,
  );

  if (date != null) {}
}
