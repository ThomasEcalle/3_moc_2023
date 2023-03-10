import 'package:flutter/material.dart';

void main() {
  runApp(const ExerciseTwo());
}

class ExerciseTwo extends StatefulWidget {
  const ExerciseTwo({Key? key}) : super(key: key);

  @override
  State<ExerciseTwo> createState() => _ExerciseTwoState();
}

class _ExerciseTwoState extends State<ExerciseTwo> {
  Color _selectedColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MySquare(
            color: _selectedColor,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.draw),
          onPressed: _onPressed,
        ),
      ),
    );
  }

  void _onPressed() {
    setState(() {
      _selectedColor = _selectedColor == Colors.amber ? Colors.black : Colors.amber;
    });
  }
}

class MySquare extends StatelessWidget {
  final Color color;

  const MySquare({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }
}
