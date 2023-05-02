import 'package:flutter/material.dart';

void main() {
  runApp(const ExerciseThree());
}

class ExerciseThree extends StatefulWidget {
  const ExerciseThree({Key? key}) : super(key: key);

  @override
  State<ExerciseThree> createState() => _ExerciseThreeState();
}

class _ExerciseThreeState extends State<ExerciseThree> {
  Color _backgroundColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _backgroundColor,
        body: Center(
          child: MySquare(
            onTap: _changeBackgroundColor,
          ),
        ),
      ),
    );
  }

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _backgroundColor == Colors.amber ? Colors.blue : Colors.amber;
    });
  }
}

class MySquare extends StatelessWidget {
  final VoidCallback onTap;

  const MySquare({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.white,
      ),
    );
  }
}
