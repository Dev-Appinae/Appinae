// ignore: file_names
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:appinae_app/assets/colors/colors.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaAppinae.fundoApp,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
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
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Entre com seus dados para se registrar.',
                style: TextStyle(
                  color: PaletaAppinae.preto,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          label: const Text('Nome:  '),
                          filled: true,
                          fillColor: PaletaAppinae.fundoApp,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      decoration: InputDecoration(
                          label: const Text('CPF:'),
                          filled: true,
                          fillColor: PaletaAppinae.fundoApp,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      decoration: InputDecoration(
                          label: const Text('E-mail:'),
                          filled: true,
                          fillColor: PaletaAppinae.fundoApp,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      decoration: InputDecoration(
                          label: const Text('Senha:'),
                          filled: true,
                          fillColor: PaletaAppinae.fundoApp,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      decoration: InputDecoration(
                          label: const Text('Confirmar Senha:'),
                          filled: true,
                          fillColor: PaletaAppinae.fundoApp,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: PaletaAppinae.amareloClaro,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Text(
                  'Confirmar',
                  style: TextStyle(
                    color: PaletaAppinae.preto,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () => context.go('/'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: PaletaAppinae.fundoApp,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(
                          color: PaletaAppinae.preto,
                        ))),
                child: const Text(
                  'Cancelar',
                  style: TextStyle(
                    color: PaletaAppinae.preto,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
