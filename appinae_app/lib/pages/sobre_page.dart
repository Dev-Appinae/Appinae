import 'package:appinae_app/assets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

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
                Text('Sanderson Cesar'),
                Text('Caio Daoud'),
                Text('Tiago Segato'),
                Text('Beatriz Silva'),
                Text('Barbara Beatriz'),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}
