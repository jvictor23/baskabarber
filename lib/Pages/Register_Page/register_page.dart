import 'package:baskabarber/utils/cores.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: AnimatedContainer(
            duration: Duration(seconds: 3),
            child: Padding(
              padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child: Center(
                      child: Text(
                        "Dados Pessoais",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Nome Completo",
                            hintStyle:
                                TextStyle(color: Color(Cores().corLetras)),
                            alignLabelWithHint: true,
                          )),
                      TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle:
                                TextStyle(color: Color(Cores().corLetras)),
                            alignLabelWithHint: true,
                          )),
                      TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Numero de Telefone",
                            hintStyle:
                                TextStyle(color: Color(Cores().corLetras)),
                            alignLabelWithHint: true,
                          )),
                      TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Senha",
                            hintStyle:
                                TextStyle(color: Color(Cores().corLetras)),
                            alignLabelWithHint: true,
                          )),
                      TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Repita a Senha",
                            hintStyle:
                                TextStyle(color: Color(Cores().corLetras)),
                            alignLabelWithHint: true,
                          )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Checkbox(
                            value: _checkbox,
                            onChanged: (toque) {
                              setState(() {
                                _checkbox = toque;
                              });
                            },
                            activeColor: Color(Cores().corCheckBox)),
                        Text("Li e concordo com os termos")
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                      child: Text("Criar Conta"),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
