import 'package:chai/chai_prefs.dart';
import 'package:chai/styled_body_text.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Chai App', style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24.0,
          fontStyle: FontStyle.italic,

        )),
        backgroundColor: const Color.fromARGB(255, 145, 94, 75),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[300],
            padding: const EdgeInsets.all(30.0),
            child: StyledBodyText('Customize your perfect chai!'),
          ),
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(30.0),
            child: const ChaiPrefs(),
          ),
        Expanded(
          child: Image.asset('assets/img/tea.jpg', height: 150, width: 150,
          fit:BoxFit.fitWidth,
          alignment: Alignment.bottomCenter,
          ),
        ),
        ],
      )
    );
  }
}