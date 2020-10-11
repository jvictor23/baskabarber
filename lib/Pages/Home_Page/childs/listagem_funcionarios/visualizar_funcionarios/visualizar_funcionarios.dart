import 'package:baskabarber/models/Funcionario.dart';
import 'package:flutter/material.dart';

class VisualizarFuncionarios extends StatefulWidget {
  @override
  _VisualizarFuncionariosState createState() => _VisualizarFuncionariosState();
  Funcionario funcionario;
  VisualizarFuncionarios(this.funcionario);
}

class _VisualizarFuncionariosState extends State<VisualizarFuncionarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visualizar Funcionario"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Card(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(widget.funcionario.imagem),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 10),
                child: Text("Nome Completo"),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                  initialValue: widget.funcionario.nome,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  readOnly: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text("CPF"),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                  initialValue: widget.funcionario.cpf,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  readOnly: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text("E-mail"),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                  initialValue: widget.funcionario.email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  readOnly: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text("Data de Nascimento"),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                  initialValue: widget.funcionario.dataNasc,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  readOnly: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text("Telefone"),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                  initialValue: widget.funcionario.telefone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  readOnly: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
