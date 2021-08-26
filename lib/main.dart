import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lerjson/pages/cargosExibir.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Consumindo JSON',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExibirCargos(), //aqui vai estar dando erro, falta criar
    );
  }
}
