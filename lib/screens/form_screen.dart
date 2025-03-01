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
        child: SingleChildScrollView(
          child: Container(
            width: 375,
            height: 650,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.black12,
                border: Border.all(width: 2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: nameController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        hintText: 'Nome',
                        fillColor: Colors.white70,
                        filled: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: difficultyController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        hintText: 'Dificuldade',
                        fillColor: Colors.white70,
                        filled: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (text) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.url,
                    controller: imageController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        hintText: 'Imagem',
                        fillColor: Colors.white70,
                        filled: true),
                  ),
                ),
                Container(
                  width: 72,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(4)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      imageController.text,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return Image.asset('assets/images/nophoto.png');
                      },
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      print(
                          '$imageController, $difficultyController, $nameController');
                    },
                    child: Text('Adicionar'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
