import 'package:flutter/material.dart';

void main() {
  runApp(const ExerciseThree());
}

class ExerciseThree extends StatelessWidget {
  const ExerciseThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: MySquare(),
        ),
      ),
    );
  }
}

class MySquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.white,
    );
  }
}
