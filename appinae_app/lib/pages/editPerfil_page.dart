// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:appinae_app/assets/colors/colors.dart';

class EditPerfil extends StatefulWidget {
  const EditPerfil({super.key});

  @override
  State<EditPerfil> createState() => _EditPerfilState();
}

class _EditPerfilState extends State<EditPerfil> {
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
                    onPressed: () => context.go('/viewProductions'),
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: PaletaAppinae.preto,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                child: const Text(
                  'Informe os novos dados que deseja editar.',
                  style: TextStyle(
                    color: PaletaAppinae.preto,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('Nome o Produtor:'),
                          filled: true,
                          fillColor: PaletaAppinae.fundoApp,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: PaletaAppinae.preto,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: PaletaAppinae.fundoApp,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const Divider(
                        color: PaletaAppinae.cinza,
                        thickness: 2.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('123.456.789.00:'),
                          filled: true,
                          fillColor: PaletaAppinae.fundoApp,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: PaletaAppinae.preto,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: PaletaAppinae.fundoApp,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const Divider(
                        color: PaletaAppinae.cinza,
                        thickness: 2.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('produtor@gmail.com:'),
                          filled: true,
                          fillColor: PaletaAppinae.fundoApp,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: PaletaAppinae.preto,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: PaletaAppinae.fundoApp,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const Divider(
                        color: PaletaAppinae.cinza,
                        thickness: 2.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('Senha:'),
                          filled: true,
                          fillColor: PaletaAppinae.fundoApp,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: PaletaAppinae.preto,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: PaletaAppinae.fundoApp,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const Divider(
                        color: PaletaAppinae.cinza,
                        thickness: 2.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('Confirmar Senha:'),
                          filled: true,
                          fillColor: PaletaAppinae.fundoApp,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: PaletaAppinae.preto,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: PaletaAppinae.fundoApp,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const Divider(
                        color: PaletaAppinae.cinza,
                        thickness: 2.0,
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
                            'Salvar',
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
              ),
            ],
          ),
        ));
  }
}
