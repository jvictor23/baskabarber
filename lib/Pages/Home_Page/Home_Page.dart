import 'package:baskabarber/Pages/Home_Page/childs/home/home.dart';
import 'package:baskabarber/Pages/Home_Page/childs/listagem_funcionarios/listagem_funcionarios.dart';
import 'package:baskabarber/Pages/Home_Page/childs/perfil/perfil.dart';
import 'package:flutter/material.dart';
import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 2;
  void onChangeTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Image.asset(
                "images/harden.png",
                height: alturaTela * 0.19,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListagemFuncionarios(),
                  Home(),
                  Perfil(),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: JumpingTabBar(
          onChangeTab: onChangeTab,
          backgroundColor: Colors.white,
          circleGradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.black,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          items: [
            TabItemIcon(
                iconData: Icons.supervised_user_circle,
                curveColor: Color(0xff4e6fe3)),
            TabItemIcon(
                iconData: Icons.home_outlined, curveColor: Color(0xff4e6fe3)),
            TabItemIcon(iconData: Icons.store, curveColor: Color(0xff4e6fe3)),
          ],
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}
