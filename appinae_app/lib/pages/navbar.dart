import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const NavBar({super.key, required this.selectedIndex, required this.onItemTapped});
  

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.person), // Ícone de perfil
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map), // Ícone de mapa
          label: 'Mapa',
        ),
        BottomNavigationBarItem(
           icon: Icon(Icons.bug_report_outlined), // Seu ícone de abelha personalizado
          label: 'Produções',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info), // Ícone de informação
          label: 'Sobre',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.black, // Cor do ícone selecionado
      unselectedItemColor: Colors.grey, // Cor do ícone não selecionado
      onTap: onItemTapped,
      backgroundColor: const Color(0xFFFBD894), // Cor de fundo da barra de navegação
    );
  }
}
