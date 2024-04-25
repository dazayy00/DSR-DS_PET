import 'package:flutter/material.dart';
import 'package:petplus/features/template/presentation/pages/home_page.dart';
import 'package:petplus/features/template/presentation/pages/registrar_dispositivo.dart';

import 'features/template/presentation/pages/configurar_dispositivo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetPlus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/homepage':(context) => const HomePage(),
        '/registrar_dispositivo':(context) => const RegistrarDispositivo(),
        '/configurar_dispositivo':(context) => const ConfigurarDispositivo(),
      },
    );
  }
}



