import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';
import 'package:nosso_primeiro_projeto/data/task_inherited.dart';
import 'package:nosso_primeiro_projeto/screens/form_screen.dart';

import '../data/task_dao.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  double globalLevel = 0;
  double progressBarValue = 0;

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
        bottom: _buidAppBarBottom(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: IconButton(
              icon: Icon(Icons.loop),
              onPressed: () {
                refreshLevelPage();
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 70),
        child: FutureBuilder<List<Task>>(
            future: TaskDao().findAll(),
            builder: (context, snapshot) {
              List<Task>? items = snapshot.data;
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Center(
                    child: Column(
                      children: [
                        CircularProgressIndicator(),
                        Text('Carregando'),
                      ],
                    ),
                  );
                case ConnectionState.waiting:
                  return Center(
                    child: Column(
                      children: [
                        CircularProgressIndicator(),
                        Text('Carregando'),
                      ],
                    ),
                  );
                case ConnectionState.active:
                  return Center(
                    child: Column(
                      children: [
                        CircularProgressIndicator(),
                        Text('Carregando'),
                      ],
                    ),
                  );
                case ConnectionState.done:
                  if (snapshot.hasData && items != null) {
                    if (items.isNotEmpty) {
                      return ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Task tarefa = items[index];
                            return tarefa;
                          });
                    }
                    return Center(
                      child: Column(
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 128,
                          ),
                          Text(
                            'Não há nenhuma Tarefa',
                            style: TextStyle(fontSize: 32),
                          )
                        ],
                      ),
                    );
                  }
                  return Text('Erro ao carregar Tarefas');
                  throw UnimplementedError();
              }
              return Text('Erro desconhecido!');
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (contextNew) => FormScreen(
                  taskContext: context,
                ),
              ));
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  PreferredSize _buidAppBarBottom() {
    return PreferredSize(
      preferredSize: Size.fromHeight(15),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            SizedBox(
              width: 180,
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
                color: Colors.white,
                value: progressBarValue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Level Global: ${globalLevel.toStringAsFixed(2)}',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void refreshLevelPage() {
    setState(() {
      globalLevel = 0; //para resetar os valores armazenados em cache
      progressBarValue = 0; //para resetar os valores armazenados em cache
      for (var task in TaskInherited.of(context)?.taskList ?? []) {
        final taskLevel = (task.nivel * task.dificuldade) / 10;
        globalLevel += taskLevel;
      }
      progressBarValue = globalLevel / 100;
    });
  }
}
