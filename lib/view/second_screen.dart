import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İkinci Sayfa'),
      ),
      body: const Center(
        child: Text('Bu ikinci ekran!'),
      ),
    );
  }
}