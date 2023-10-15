import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:appinae_app/assets/colors/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaAppinae.fundoApp,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            width: 240,
            margin: const EdgeInsets.only(top: 72),
            child: Image.asset('lib/assets/images/login_image.png'),
          ),
          const Text(
            'Entre com seu login e senha ou faça seu registro',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Form(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                    label: const Text('Email:'),
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
              const SizedBox(height: 64),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () => context.go('/viewProductions'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: PaletaAppinae.amareloClaro,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(
                      color: PaletaAppinae.preto,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () => context.go('/createAccount'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: PaletaAppinae.amareloClaro,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text(
                    'Registrar',
                    style: TextStyle(
                      color: PaletaAppinae.preto,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ]),
          ))
        ],
      ),
    );
  }
}
