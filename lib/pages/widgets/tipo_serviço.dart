import 'package:flutter/material.dart';

import 'package:agd_barbearia/pages/widgets/button_widget.dart';

class tipo_servico extends StatefulWidget {
  @override
  _tipo_servicoState createState() => _tipo_servicoState();
}

class _tipo_servicoState extends State<tipo_servico> {
  TimeOfDay time;

  @override
  Widget build(BuildContext context) => ButtonHeaderWidget(
        title: 'Time',
        text: ('Selecione o serviço'),
        onClicked: () => (context),
      );
}
