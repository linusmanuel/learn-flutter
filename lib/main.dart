import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Stack _buildStack({
  Color colorFist = Colors.blue,
  Color colorSecond = Colors.amber}) {
  return  Stack(
    alignment: AlignmentDirectional.center,
    children: [
      Container(
        width: 150,
        height: 150,
        color: colorFist,
      ),
      Container(
        width: 100,
        height: 100,
        color: colorSecond,
      ),
    ],
  );
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
      home: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildStack(colorFist: Colors.red, colorSecond: Colors.cyan),
            _buildStack(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.blue, width: 50, height: 50,),
                Container(color: Colors.red, width: 50, height: 50,),
                Container(color: Colors.amber, width: 50, height: 50)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  height: 30,
                  width: 300,
                  child: Text('Diamante amarelo',
                    style: TextStyle(color: Colors.amber, fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            ElevatedButton(onPressed: (){print("Você clicou o botão!");}, child: Text('Aperte o botão'))
          ],
        ),
      ),
    );
  }
}

