import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      backgroundColor: Colors.blueGrey,
      body: const Center(
        child: Text('SecondScreen'),
      ),
    );
  }
}
