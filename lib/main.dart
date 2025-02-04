import 'package:flutter/material.dart';

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
      home: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            color: Colors.white,
          ),
          Container(
            color: Colors.black,
            width: 300,
            height: 300,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
            width: 75,
            height: 75,
          ),
          Container(
            width: 37,
            height: 37,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}

