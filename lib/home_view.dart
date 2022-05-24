import 'package:flutter/material.dart';

void main() => const MyHomePageView();

class MyHomePageView extends StatelessWidget {
    const MyHomePageView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Desde home view'),
      ),
      body: const Center(
        child: Text('Hola Mundo')
      ),
    );
  }
}
