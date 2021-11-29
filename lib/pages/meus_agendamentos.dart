import 'package:agd_barbearia/pages/agendamento.dart';
import 'package:agd_barbearia/pages/widgets/time_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:agd_barbearia/utils/common.dart';
import 'package:agd_barbearia/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:agd_barbearia/pages/Timeline.dart';
import 'package:agd_barbearia/pages/widgets/button_widget.dart';
import 'package:agd_barbearia/pages/widgets/date_picker_widget.dart';
import 'package:agd_barbearia/pages/widgets/datetime_picker_widget.dart';
import 'package:agd_barbearia/pages/widgets/time_picker_widget.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class meusAgendamentosPage extends StatefulWidget {
  const meusAgendamentosPage({Key key}) : super(key: key);

  @override
  _meusAgendamentosPageState createState() => _meusAgendamentosPageState();
}

class _meusAgendamentosPageState extends State<meusAgendamentosPage> {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(
      body: corpo(),
    );
  }
}

Widget corpo() {
  return Column(
    children: [
      Container(
        width: 600.0,
        height: 660.0,
      )
    ],
  );
}

setState(int Function() param0) {}
