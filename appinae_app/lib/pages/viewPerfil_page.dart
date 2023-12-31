import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:appinae_app/assets/colors/colors.dart';

class ViewPerfil extends StatefulWidget {
  const ViewPerfil({super.key});

  @override
  State<ViewPerfil> createState() => _ViewPerfilState();
}

class _ViewPerfilState extends State<ViewPerfil> {
  int _selectedIndex = 0; // Índice inicial (Perfil)

  void _onItemTapped(int index) {
    if (index == 0) {
      context.go('');
    } else if (index == 1) {
      context.go('/minhasprodutions');
    } else if (index == 2) {
      context.go('/viewProductions');
    } else if (index == 3) {
      context.go('/sobrePage');
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              width: 341,
              height: 392,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nome',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Nome no Produtor',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'CPF',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '123.456.789-00',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'E-mail',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'teste@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Senha',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '****',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () => context.go('/editPerfil'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: PaletaAppinae.amareloClaro,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 8),
                    Text(
                      'Editar',
                      style: TextStyle(
                        color: PaletaAppinae.preto,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
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
        unselectedItemColor: Colors.black, // Cor do ícone não selecionado
        onTap: _onItemTapped,
      ),
    );
  }
}
