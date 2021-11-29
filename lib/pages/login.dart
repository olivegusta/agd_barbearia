//import 'package:barbearia/pages/calander.dart';
import 'package:agd_barbearia/pages/agendamento.dart';
import 'package:agd_barbearia/utils/common.dart';
import 'package:agd_barbearia/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:agd_barbearia/pages/Timeline.dart';
import 'package:flutter/services.dart';

final TextEditingController _nameCtrl = TextEditingController();

class LoginPage extends StatefulWidget {
  static String tag = 'cadastro';
  const LoginPage({key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(body: corpo());
  }

  Widget corpo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Image.network(
              'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/profile/photos/8401079/original/videozed-logo_600x600_00000.png'),
        ),
        _nameContainer(),
        Container(
          height: 50.0,
          width: 120.0,
          child: botao(
              texto: "entrar",
              action: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => TimelinePage(
                      nome: '',
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

Widget _nameContainer() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      TextField(
          autofocus: true,
          keyboardType: TextInputType.text,
          style: TextStyle(color: Colors.blue, fontSize: 20),
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
              labelText: "Email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: Icon(Icons.email))),
      Padding(padding: EdgeInsets.only(top: 50.0)), //TextField
      TextField(
        autofocus: true,
        obscureText: true,
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.blue, fontSize: 20),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
          labelText: "Senha",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(color: Colors.black),
          // suffixIcon: Icon(Icons.password_rounded
        ),
        //TextField
      )
    ],
  );
}

Widget _formula() {
  return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                  decoration: InputDecoration(
                    labelText: "Telefone do usuário",
                    labelStyle: TextStyle(color: Colors.black),
                  )), //TextField
              TextField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Senha do usuário",
                    labelStyle: TextStyle(color: Colors.black),
                  )), //TextField
            ],
          ),
        ),
      ));
}
