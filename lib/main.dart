import 'package:flutter/material.dart';

import 'home_cliq_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evento de Clique',
      home: HomeCliquePage(),
    );
  }
}