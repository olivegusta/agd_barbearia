import 'package:agd_barbearia/pages/widgets/time_picker_widget.dart';
import 'package:agd_barbearia/pages/widgets/tipo_servi%C3%A7o.dart';
import 'package:flutter/cupertino.dart';
import 'package:agd_barbearia/utils/common.dart';
import 'package:agd_barbearia/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:agd_barbearia/pages/Timeline.dart';
import 'package:agd_barbearia/pages/widgets/button_widget.dart';
import 'package:agd_barbearia/pages/widgets/date_picker_widget.dart';
import 'package:agd_barbearia/pages/widgets/datetime_picker_widget.dart';
import 'package:agd_barbearia/pages/widgets/time_picker_widget.dart';
import '../main.dart';

class agendamentoPage extends StatefulWidget {
  const agendamentoPage({Key key, this.nome}) : super(key: key);
  static String tag = 'cadastro';
  final String nome;
  @override
  _agendamentoPageState createState() => _agendamentoPageState();
}

class _agendamentoPageState extends State<agendamentoPage> {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(
      body: corpo(),
      appBar: AppBar(
        title: Text('AGENDAMENTO', textAlign: TextAlign.center),
      ),
    );
  }
}

Widget corpo() {
  return Column(
    children: [
      Container(
        width: 200.0,
        height: 300.0,
        child: buildPages(),
      ),
      SizedBox(
        width: 200,
        height: 200,
        child: Image.network(
            'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/profile/photos/8401079/original/videozed-logo_600x600_00000.png'),
      ),
      botao(
        texto: 'Agendar',
        action: () {},
      ),
      botao(
        texto: 'Serviços agendados',
        action: () {},
      ),
    ],
  );
}

Widget buildPages() {
  switch (index) {
    case 0:
      return Scaffold(
        //backgroundColor: Colors.white24,
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tipo_servico(),
              DatePickerWidget(),
              // const SizedBox(height: 24),
              TimePickerWidget(),
              //const SizedBox(height: 24),
            ],
          ),
        ),
      );
    case 1:
      return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DatetimePickerWidget(),
            ],
          ),
        ),
      );
    default:
      return Container();
  }
}
