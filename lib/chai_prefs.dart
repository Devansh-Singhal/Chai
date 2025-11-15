import 'package:chai/styled_body_text.dart';
import 'package:chai/styled_button.dart';
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
            StyledBodyText('Strength:'),

              
            for ( int i = 0; i < strength; i++)
                Image.asset('assets/img/strength.jpg', height: 40, width: 40),
                const Expanded(child: SizedBox()),
                StyledButton(
                  onPressed: increaseStrength,
                  child: const Text('+'),
                ),
          ],
        ),
        Row(
          children: [
            StyledBodyText('Sugar:'),
            if(sugars == 0)
                Text(' No sugar'),
             for ( int i = 0; i < sugars; i++)
                Image.asset('assets/img/sugar.jpg', height: 40, width: 40),
                const Expanded(child: SizedBox()),
                StyledButton(
                  onPressed: increaseSugars,
                  child: const Text('+'),
                ),
          ],
        ),
      ],
    );
  }
}
