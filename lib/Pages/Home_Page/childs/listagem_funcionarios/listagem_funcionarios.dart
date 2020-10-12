import 'package:baskabarber/Pages/Home_Page/childs/listagem_funcionarios/visualizar_funcionarios/cadastrar_funcionario/cadastrar_funcionario.dart';
import 'package:baskabarber/Pages/Home_Page/childs/listagem_funcionarios/visualizar_funcionarios/visualizar_funcionarios.dart';
import 'package:baskabarber/models/Funcionario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListagemFuncionarios extends StatefulWidget {
  @override
  _ListagemFuncionariosState createState() => _ListagemFuncionariosState();
}

class _ListagemFuncionariosState extends State<ListagemFuncionarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
        color: Colors.white,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Listagem de Funcionario",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Expanded(
                  child: CustomScrollView(
                slivers: [
                  SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                    return Card(
                      color: Color(0xff4e6fe3),
                      child: ListTile(
                        onTap: () {
                          Funcionario funcionario = Funcionario();
                          funcionario.id = 1;
                          funcionario.imagem =
                              "https://imagens.ndig.com.br/internet/perfil_sem_foto_facebook.jpg";
                          funcionario.nome = "Carlos Murilo Ponce dos Santos";
                          funcionario.cpf = "123.456.789.10";
                          funcionario.email = "carlos@email.com";
                          funcionario.dataNasc = "01/01/2000";
                          funcionario.telefone = "(62) 9 9999-9999";
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      VisualizarFuncionarios(funcionario)));
                        },
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://imagens.ndig.com.br/internet/perfil_sem_foto_facebook.jpg"),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [Text("20 anos"), Text("(62) 9 9999-9999")],
                        ),
                      ),
                    );
                  }, childCount: 10)),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    SizedBox(
                      height: 65,
                    )
                  ]))
                ],
              ))
            ],
          ),
          width: double.infinity,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (context) => AdicionarFuncionario()));
          },
          backgroundColor: Color(0xff4e6fe3),
          label: Row(
            children: [
              Icon(Icons.add, color: Colors.white),
              Text(
                "Adicionar",
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
    );
  }
}
