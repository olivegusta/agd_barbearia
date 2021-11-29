import 'dart:core';
import 'dart:html';

import 'package:agd_barbearia/pages/agendamento.dart';
import 'package:agd_barbearia/pages/login.dart';
import 'package:agd_barbearia/pages/meus_agendamentos.dart';
import 'package:agd_barbearia/utils/common.dart';
import 'package:agd_barbearia/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:flutter/src/widgets/navigator.dart';

final TextEditingController _nameCtrl = TextEditingController();

class TimelinePage extends StatefulWidget {
  final String nome;
  static String tag = 'cadastro';
  const TimelinePage({this.nome, Key key}) : super(key: key);

  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  void iniState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Barber_Shop', textAlign: TextAlign.center),
      ),
      body: corpo(),
    );
  }

  Widget corpo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _comentarios(),
        _comentarios(),
        _comentarios(),
        SizedBox(
            width: 400, height: 400, child: Image.asset("images/cabelo.jpg")),
        Container(
          height: 50.0,
          width: 300.0,
          child: botao(
              texto: "Agendar Serviço",
              action: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => agendamentoPage(
                              nome: '',
                            )));
              }),
        ),
      ],
    );
  }
}

Widget _comentarios() {
  return Column(
    //crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
          width: 400,
          height: 30,
          margin: EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(border: Border.all()),
          child: Text(
            'COMENTARIOS',
            textAlign: TextAlign.left,
          )),
    ],
  );
}
