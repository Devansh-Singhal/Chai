import 'package:flutter/material.dart';

class ChaiPrefs extends StatefulWidget {
  const ChaiPrefs({super.key});

  @override
  State<ChaiPrefs> createState() => _ChaiPrefsState();
}

class _ChaiPrefsState extends State<ChaiPrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Strength:'),
            Text('$strength'),
            Image.asset('assets/img/strength.jpg', height: 90, width: 90),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(backgroundColor: Colors.brown),
              onPressed: increaseStrength,
              child: const Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            Text('Sugar:'),
            Text('$sugars'),
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
