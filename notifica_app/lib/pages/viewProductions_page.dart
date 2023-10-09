// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notifica_app/assets/colors/colors.dart';


class ViewProductions extends StatefulWidget {
  const ViewProductions({super.key});

  @override
  State<ViewProductions> createState() => _ViewProductionsState();
}

class _ViewProductionsState extends State<ViewProductions> {
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
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: PaletaAppinae
                      .fundoApp,  
                  border: Border.all(
                    color: Colors.black, 
                    width: 1.0, 
                  ),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Pesquisar',
                          contentPadding: EdgeInsets.all(8.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        // logica da pesquisaa
                      },
                    ),
                  ],
                ),
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
        ));
  }
}
