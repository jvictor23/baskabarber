import 'package:baskabarber/Pages/Register_Page/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
        }, child: Text("Entrar Tela de Cadastro"),),
      )
    );
  }
}