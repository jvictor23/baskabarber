import 'package:flutter/material.dart';

class ListagemFuncionarios extends StatefulWidget {
  @override
  _ListagemFuncionariosState createState() => _ListagemFuncionariosState();
}

class _ListagemFuncionariosState extends State<ListagemFuncionarios> {
  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 150,
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            color: Colors.white,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 30),
                    child: Text(
                      "Listagem de Funcionario",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Card(
                              color: Color(0xff4e6fe3),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 30,
                                ),
                                title: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Carlos Murilo Ponce dos Santos",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                subtitle: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("20 anos"),
                                    Text("(62) 9 9999-9999")
                                  ],
                                ),
                              ),
                            );
                          }))
                ],
              ),
              width: double.infinity,
              height: alturaTela * 0.6103,
            ),
          )
        ],
      ),
    );
  }
}
