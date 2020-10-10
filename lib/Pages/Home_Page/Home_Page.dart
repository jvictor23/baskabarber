import 'package:baskabarber/Pages/Home_Page/childs/listagem_funcionarios.dart';
import 'package:flutter/material.dart';
import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 2;
  void onChangeTab(int index) {
    selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Bar Page"),
        ),
        body: TabBarView(
          children: [
            new Container(
              color: Colors.white,
            ),
            new Container(
              color: Colors.white,
            ),
            ListagemFuncionarios(),
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
                iconData: Icons.person_add_outlined,
                curveColor: Color(0xff4e6fe3)),
            TabItemIcon(
                iconData: Icons.home_outlined, curveColor: Colors.white),
            TabItemIcon(
                iconData: Icons.supervised_user_circle,
                curveColor: Color(0xff4e6fe3)),
          ],
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}
