import 'package:flutter/material.dart';
import 'package:flutter_stateless_versos_statefull/pages/home/home_page.dart';
import 'package:flutter_stateless_versos_statefull/pages/home/tela_statefull.dart';
import 'package:flutter_stateless_versos_statefull/pages/home/tela_stateless.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/stateless': (context) => const TelaStateless(),
        '/statefull' :(context) => const TelaStatefull(),
      },
    );
  }
}
