import 'package:flutter/material.dart';

class ChaiPrefs extends StatelessWidget {
  const ChaiPrefs({super.key});

void increaseStrength(){
print ('Increase strength');

}
void increaseSugars(){
print('Increase sugar');

}



  @override
  Widget build(BuildContext context) {
    return Column(
children: [
  Row(
    children: [
      Text('Strength:'),
      Text('3'),
      Image.asset('assets/img/strength.jpg', height:90, width: 90),
      const Expanded(child: SizedBox()),
      FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: Colors.brown,
        ),
        onPressed: increaseStrength,
        child: const Text('+'),
      ),
    ],
  ),
  Row(
    children: [
      Text('Sugar:'),
      Text('3'),
      Image.asset('assets/img/sugar.jpg', height: 80, width: 80),
      const Expanded(child: SizedBox()),
      FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.brown[900],
        ),
        onPressed: increaseSugars,
        child: const Text('+'),
      ),

    ],
  ),
],

    );

  }
}