import 'package:flutter/material.dart';

class CadastrarFuncionario extends StatefulWidget {
  @override
  _CadastrarFuncionarioState createState() => _CadastrarFuncionarioState();
}

class _CadastrarFuncionarioState extends State<CadastrarFuncionario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
        color: Colors.white,
        child: Container(
          width: double.infinity,
        ),
      ),
    );
  }
}
