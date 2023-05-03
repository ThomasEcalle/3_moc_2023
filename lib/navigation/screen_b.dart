import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  static const String routeName = '/screenB';

  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen b'),
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
