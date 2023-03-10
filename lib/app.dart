import 'package:flutter/material.dart';

import 'home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 42,
            color: Colors.black,
          ),
        ),
      ),
      home: const Home(),
    );
  }
}
