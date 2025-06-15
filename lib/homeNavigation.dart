import 'package:flutter/material.dart';
import 'package:projeto_ux_ui/home.dart';
import 'package:projeto_ux_ui/loja.dart';
import 'package:projeto_ux_ui/missoes.dart';
import 'package:projeto_ux_ui/perfil.dart';
class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}
class _HomeNavigationState extends State<HomeNavigation> {
  int _index = 0;
  final List<Widget> _pages = const [
    HomePage(),
    MissoesPage(),
    LojaPage(),
    PerfilPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) => setState(() => _index = value),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Missões'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Loja'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}