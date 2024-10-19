import 'package:flutter/material.dart';
class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context)
 {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2'),
      ),
      body: const Center(
        child: Text('Hola desde Pantalla 2'),
      ),
    );
  }
}