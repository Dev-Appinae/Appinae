import 'package:appinae_app/assets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MinhasProducoesMapa extends StatefulWidget {
  const MinhasProducoesMapa({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MinhasProducoesMapaState createState() => _MinhasProducoesMapaState();
}

class _MinhasProducoesMapaState extends State<MinhasProducoesMapa> {
  int _selectedIndex = 1; // Defina o índice inicial para "Produções"

  void _onItemTapped(int index) {
    if (index == 0) {
      context.go('/viewPerfil');
    } else if (index == 1) {
      // Adicionar a navegação
    } else if (index == 2) {
      context.go('/viewProductions');
    } else if (index == 3) {
      Navigator.of(context).pushNamed('/sobrePage');
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PaletaAppinae.fundoApp,
        title: const Text('Minhas Produções'),
        leading: IconButton(
          onPressed: () => context.go('/'),
          icon: const Icon(
            Icons.arrow_back,
            size: 32,
            color: PaletaAppinae.preto,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: PaletaAppinae.fundoApp, // Cor de fundo
        ),
        // child: GoogleMap(), // Substitua pelo seu mapa do Google
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
            icon: Icon(Icons.bug_report_outlined),
            label: 'Produções',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info), // Ícone de informação
            label: 'Sobre',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: PaletaAppinae.amareloEscuro,
        selectedItemColor: Colors.black, // Cor do ícone selecionado
        unselectedItemColor: Colors.black, // Cor do ícone não selecionado
        onTap: _onItemTapped,
        // Cor de fundo da barra de navegação
      ),
    );
  }
}

/*class MapaGoogle extends StatefulWidget {
  @override
  _MapaGoogleState createState() => _MapaGoogleState();
}*/

/*class _MapaGoogleState extends State<MapaGoogle> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (GoogleMapController controller) {
        mapController = controller;
      },
      initialCameraPosition: CameraPosition(
        target: LatLng(37.7749, -122.4194), // Coordenadas de exemplo
        zoom: 14.0,
      ),
    );
  }
}*/
