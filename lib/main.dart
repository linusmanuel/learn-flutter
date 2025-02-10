import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/grid.dart';

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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Flutter: Meus primeiros passos",
            style: TextStyle(color: Colors.white),),
        ),
        body: Container(),
        floatingActionButton: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.blue,),
      ),
    );
  }
}

