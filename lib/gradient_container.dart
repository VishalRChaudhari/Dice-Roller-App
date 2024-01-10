import 'package:flutter/material.dart';
import 'package:flutter_first/roll_dice.dart';

const startAlignment = Alignment.centerLeft;
const endAlignment = Alignment.centerRight;


class GradientContainer extends StatelessWidget {
  //const GradientContainer({key}): super(key:key);
  const GradientContainer(this.grad1, this.grad2, {super.key});

  final Color grad1;
  final Color grad2;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          grad1,
          grad2,
        ], begin: startAlignment, end: Alignment.centerRight),
      ),
      child: const Center(
        child: rollDice(),
      ),
    );
  }
}
