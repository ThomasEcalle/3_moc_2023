import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  static const String routeName = '/screenC';

  static void navigateTo(BuildContext context, int id) {
    Navigator.of(context).pushNamed(routeName, arguments: id);
  }

  const ScreenC({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen c : $id'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go back'),
          onPressed: () => _goBack(context),
        ),
      ),
    );
  }

  void _goBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}
