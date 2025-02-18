import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nova Tarefa',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 375,
          height: 650,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.black12,
              border: Border.all(width: 2)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nameController,
                  textAlign:  TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Nome',
                      fillColor: Colors.white70, filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: difficultyController,
                  textAlign:  TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Dificuldade',
                      fillColor: Colors.white70, filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: imageController,
                  textAlign:  TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Imagem',
                      fillColor: Colors.white70, filled: true),
                ),
              ),
              ElevatedButton(onPressed: (){
                print('$imageController, $difficultyController, $nameController');
              }, child: Text('Adicionar'))
            ],
          ),
        ),
      ),
    );
  }
}
