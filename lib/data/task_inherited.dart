import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class  TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required super.child,
  });

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

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
    context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }


  @override
  bool updateShouldNotify( TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
