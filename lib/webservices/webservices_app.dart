import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const WebServicesApp());
}

class WebServicesApp extends StatelessWidget {
  const WebServicesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WebServicesHome(),
    );
  }
}

class WebServicesHome extends StatelessWidget {
  const WebServicesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coucou'),
      ),
    );
  }
}
