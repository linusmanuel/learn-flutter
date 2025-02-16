import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 50,
        backgroundColor: Colors.blue,
        title: Text(
          "Tarefas",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 800),
        child: ListView(
          children: [
            Task(
                'Aprender Flutter',
                'assets/images/dash.png',
                2),
            Task(
                'Andar de Bike',
                'assets/images/bike.webp',
                3),
            Task(
                'Meditar',
                'assets/images/meditar.jpeg',
                4),
            Task(
                'Ler',
                'assets/images/livro.jpg',
                5),
            Task('Jogar',
                'assets/images/jogar.jpg', 0),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.hide_image, color: Colors.white,),
      ),
    );
  }
}
