import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();
class rollDice extends StatefulWidget {
  const rollDice({super.key});
  @override
  State<rollDice> createState() {
    return _rollDicestate();
  }
}


class _rollDicestate extends State<rollDice> {
  var currentdiceroll = 2;
   void rollDice() {
    // method1 var dicenum =Random().nextInt(6)+1;
    //method2 currentdiceroll =Random().nextInt(6)+1 
    setState(() {
            currentdiceroll =randomizer.nextInt(6)+1 ;
    
    });
    
  }
  

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentdiceroll.png', width: 200),
        const SizedBox(height: 20),
        //TextButton(onPressed: () {},  child: const Text('Roll Dice'))
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top:20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
