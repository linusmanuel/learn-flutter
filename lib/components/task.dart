import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/difficulty.dart';

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(
    this.nome,
    this.foto,
    this.dificuldade, {
    super.key,
  });

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  bool assetsOrNetwork() {
    if(widget.foto.contains('http')) {
      return false;
    }

    return true;
  }

  int mastery = 0;
  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.yellowAccent[700] ?? Colors.yellow,
    Colors.amber[700] ?? Colors.amber,
    Colors.red,
    Colors.purple,
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: colors[mastery],
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black26),
                      width: 72,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: assetsOrNetwork() ? Image.asset(
                          widget.foto,
                          fit: BoxFit.cover,
                        ) : Image.network(widget.foto, fit: BoxFit.cover,)
                      ),
                    ),
                    SizedBox(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.nome,
                              style: TextStyle(fontSize: 24),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Difficulty(widget.dificuldade)
                          ],
                        )),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {
                            setState(() {
                              nivel++;
                              double restartNivel =
                                  (nivel / widget.dificuldade) / 10;
                              bool nivelComplete = restartNivel > 1;
                              if (nivelComplete &&
                                  mastery < colors.length - 1) {
                                mastery++;
                                nivel = 1;
                              }
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.white,
                              ),
                              Text(
                                "UP",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LinearProgressIndicator(
                        value: widget.dificuldade > 0
                            ? (nivel / widget.dificuldade) / 10
                            : 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Nivel $nivel",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
