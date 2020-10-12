import 'package:flutter/material.dart';

class AdicionarFuncionario extends StatefulWidget {
  @override
  _AdicionarFuncionarioState createState() => _AdicionarFuncionarioState();
}

class _AdicionarFuncionarioState extends State<AdicionarFuncionario> {
  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar Funcionario"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Card(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
        child: Container(
          width: double.infinity,
          height: alturaTela,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 0, top: 15),
                    child: CircleAvatar(
                      backgroundColor: Color(0xff4e6fe3),
                      radius: 60,
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        onPressed: () {},
                        child: Text("Camera"),
                        textColor: Colors.white,
                        color: Color(0xff4e6fe3),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        color: Color(0xff4e6fe3),
                        textColor: Colors.white,
                        child: Text("Galeria"),
                      )
                    ],
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
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    readOnly: true,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 12, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        RaisedButton(
                          onPressed: () {},
                          color: Color(0xff4e6fe3),
                          child: Text("Adicionar"),
                          textColor: Colors.white,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
