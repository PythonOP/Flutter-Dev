import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const num = 30;
    const name = 'Karen';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Hello $name. Your age is $num"),
      ),
      drawer: const Drawer(),
    );
  }
}
