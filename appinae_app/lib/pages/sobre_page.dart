import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:appinae_app/assets/colors/colors.dart';

class SobrePage extends StatefulWidget {
  const SobrePage({super.key});

  @override
  State<SobrePage> createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  int _selectedIndex = 3; // Índice inicial (Sobre)

  void _onItemTapped(int index) {
    if (index == 0) {
      context.go('/viewPerfil');
    } else if (index == 2) {
      context.go('/viewProductions');
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaAppinae.fundoApp,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          top: 32,
          right: 40,
        ),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => context.go('/'),
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: PaletaAppinae.preto,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('lib/assets/images/login_image.png'),
            ),
            const SizedBox(height: 20),
            // Texto
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Aplicativo desenvolvido com o objetivo de '
                'colaborar com o controle, administração e apoio a tomada e '
                'proposição do local de inserção de colônias em apiárias e '
                'meliponários de maneira a permitir aos produtores o '
                'planejamento de suas atividades apícolas e consorciamentos.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            // Lista de desenvolvedores
            const Text(
              'Desenvolvedores:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Caio Daoud'),
                Text('Tiago Segato'),
                Text('Beatriz Silva'),
                Text('Barbara Beatriz'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
            icon: Icon(Icons.bug_report_outlined), // Ícone de produções
            label: 'Produções',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info), // Ícone de informação
            label: 'Sobre',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black, // Cor do ícone selecionado
        unselectedItemColor: Colors.black,
        // backgroundColor:PaletaAppinae.amareloClaro, //isso aqui ainda não funcionou
        onTap: _onItemTapped,
      ),
    );
  }
}
