// ignore: file_names
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:appinae_app/assets/colors/colors.dart';

class ViewProductions extends StatefulWidget {
  const ViewProductions({super.key});

  @override
  State<ViewProductions> createState() => _ViewProductionsState();
}

class _ViewProductionsState extends State<ViewProductions> {
  int _selectedIndex = 2; // Índice inicial (Produções)

  void _onItemTapped(int index) {
    if (index == 0) {
      context.go('/viewPerfil');
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
            Padding(
              padding: const EdgeInsets.only(top: 700),
              child: Form(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () => context.go('/registerApiarios'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: PaletaAppinae.amareloClaro,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit,
                              color: PaletaAppinae.preto,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Nova produção',
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Produções',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Sobre',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
