import 'dart:async';

import 'package:baskabarber/utils/cores.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _checkbox = false;
  bool _status = false;
  int _corLetras = Cores().corLetras;

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 2),
        () => {
              setState(() {
                _status = true;
                _corLetras = 0xff000000;
              })
            });
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Stack(
        children: [
          Align(
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              width: MediaQuery.of(context).size.width,
              height: _status ? MediaQuery.of(context).size.height * 0.78 : 0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(18))),
            ),
            alignment: Alignment.bottomCenter,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
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
                          style: TextStyle(fontSize: 32, color: Colors.white),
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
                              hintStyle: TextStyle(color: Color(_corLetras)),
                              alignLabelWithHint: true,
                            )),
                        TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(color: Color(_corLetras)),
                              alignLabelWithHint: true,
                            )),
                        TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: "Numero de Telefone",
                              hintStyle: TextStyle(color: Color(_corLetras)),
                              alignLabelWithHint: true,
                            )),
                        TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Senha",
                              hintStyle: TextStyle(color: Color(_corLetras)),
                              alignLabelWithHint: true,
                            )),
                        TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Repita a Senha",
                              hintStyle: TextStyle(color: Color(_corLetras)),
                              alignLabelWithHint: true,
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  top:
                                      BorderSide(width: 3.0, color: Colors.black),
                                  left:
                                      BorderSide(width: 3.0, color: Colors.black),
                                  right:
                                      BorderSide(width: 3.0, color: Colors.black),
                                  bottom:
                                      BorderSide(width: 3.0, color: Colors.black),
                                ),
                              ),
                              child: Checkbox(value: _checkbox, onChanged: (toque){
                                setState(() {
                                  _checkbox = toque;
                                });
                              }, activeColor: Colors.black,),
                              
                              width: 20,
                              height: 20),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                            "Li e concordo com os termos",
                            style: TextStyle(color: Color(_corLetras)),
                          ),
                          )
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
          )
        ],
      ),
    );
  }
}
