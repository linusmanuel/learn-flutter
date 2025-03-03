import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class  TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/images/dash.png', 2),
    Task('Andar de Bike', 'assets/images/bike.webp', 3),
    Task('Meditar', 'assets/images/meditar.jpeg', 4),
    Task('Ler', 'assets/images/livro.jpg', 5),
    Task('Jogar', 'assets/images/jogar.jpg', 0),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static  of(BuildContext context) {
    final ? result = context.dependOnInheritedWidgetOfExactType<>();
    assert(result != null, 'No  found in context');
    return result!;
  }

  @override
  bool updateShouldNotify( old) {
    return ;
  }
}
