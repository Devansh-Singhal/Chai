import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.red,
           // width: 100.0,
            height: 100.0,
           // margin: const EdgeInsets.all(10.0),
            child: const Text('one' ),
          ),
          Container(
            color: Colors.green,
           // width: 100.0,
            height: 200.0,
            //margin: const EdgeInsets.all(10.0),
            child: const Text('two' ),
          ),
          Container(
            color: Colors.blue,
            //width: 100.0,
            height: 300.0,
           // margin: const EdgeInsets.all(10.0),
            child: const Text('three' ),
          ),
        ],
      )
      
    );
  }
}

