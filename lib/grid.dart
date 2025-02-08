import 'package:flutter/material.dart';

myGridLayout() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.amber,
            width: 100,
            height: 100,
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.cyan,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.purple,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.pink,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.white,
            width: 100,
            height: 100,
          )
        ],
      )
    ],
  );
}