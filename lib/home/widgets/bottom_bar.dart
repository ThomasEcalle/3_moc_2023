import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final String name;
  final void Function(int) onTap;

  const BottomBar({
    Key? key,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTap,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: widget.name,
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }

  void _onTap(int newIndex) {
    setState(() {
      widget.onTap(newIndex);
      _currentIndex = newIndex;
      print('New index clicked: $_currentIndex');
    });
  }
}
