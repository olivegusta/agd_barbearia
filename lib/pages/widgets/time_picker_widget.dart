import 'package:flutter/material.dart';

import 'package:agd_barbearia/pages/widgets/button_widget.dart';

class TimePickerWidget extends StatefulWidget {
  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay time;

  @override
  Widget build(BuildContext context) => ButtonHeaderWidget(
        title: 'Time',
        text: ('Selecione a hora'),
        onClicked: () => (context),
      );
}
