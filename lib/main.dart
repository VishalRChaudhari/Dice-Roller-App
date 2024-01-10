import 'package:flutter/material.dart';
import 'package:flutter_first/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.purple, Color.fromARGB(255, 49, 7, 86)),
      ),
    ),
  );
}
