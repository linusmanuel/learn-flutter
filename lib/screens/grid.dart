import 'package:flutter/material.dart';

_buildContainer({Color color = Colors.black}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color,
        border: Border.all(width: 3)
      ),
      child: Icon(Icons.person),
      width: 120,
      height: 120,
    ),
  );
}

Column myGridLayout() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildContainer(color: Colors.red),
          _buildContainer(color: Colors.orange),
          _buildContainer(color: Colors.amber)
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildContainer(color: Colors.green),
          _buildContainer(color: Colors.cyan),
          _buildContainer(color: Colors.blue)
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildContainer(color: Colors.purple),
          _buildContainer(color: Colors.pink),
          _buildContainer(color: Colors.white)
        ],
      )
    ],
  );
}
