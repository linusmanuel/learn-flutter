import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/Task.dart';
import 'package:nosso_primeiro_projeto/difficulty.dart';
import 'package:nosso_primeiro_projeto/grid.dart';
import 'package:nosso_primeiro_projeto/initial_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: InitialScreen()
    );
  }
}


