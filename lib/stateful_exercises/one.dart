import 'package:flutter/material.dart';

void main() {
  runApp(const ExerciseOne());
}

class ExerciseOne extends StatelessWidget {
  const ExerciseOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MySquare(),
        ),
      ),
    );
  }
}

class MySquare extends StatefulWidget {
  const MySquare({Key? key}) : super(key: key);

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {

  Color _color = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(20),
        ),
      )
    );
  }

  void _onTap() {
    setState(() {
      _color = _color == Colors.amber ? Colors.blue : Colors.amber;
    });
  }
}
