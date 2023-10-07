import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notifica_app/assets/colors/colors.dart';
import 'package:notifica_app/pages/createAccount_page.dart';
import 'package:notifica_app/pages/registerApiarios_page.dart';
import 'package:notifica_app/pages/viewProductions_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      }),
  GoRoute(
      path: '/createAccount',
      builder: (BuildContext context, GoRouterState state) {
        return const CreateAccountPage();
      }),
    GoRoute(
      path: '/registerApiarios',
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterApiarios();
      }),
         GoRoute(
      path: '/viewProductions',
      builder: (BuildContext context, GoRouterState state) {
        return const ViewProductions();
      })
      
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// isso é um comentário
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: PaletaAppinae.amareloEscuro),
        useMaterial3: true,
      ),
    );
  }
}
