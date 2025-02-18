import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
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
                  textAlign:  TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Nome',
                      fillColor: Colors.white70, filled: true),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
