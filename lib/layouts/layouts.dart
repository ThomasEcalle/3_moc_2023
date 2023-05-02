import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutsApp());
}

class LayoutsApp extends StatelessWidget {
  const LayoutsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LayoutsHome(),
    );
  }
}

class LayoutsHome extends StatelessWidget {
  const LayoutsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final deviceHeight = mediaQuery.size.height;

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final availableHeight = constraints.maxHeight;

          return Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.pink,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orange,
                        width: double.maxFinite,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: Wrap(
                            spacing: 10,
                            runSpacing: 5,
                            children: List.generate(20, (index) => const RedCircle()),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.blue,
                            height: double.maxFinite,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  RedCircle(),
                                  SizedBox(width: 10),
                                  RedCircle(),
                                  Spacer(),
                                  RedCircle(),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class RedCircle extends StatelessWidget {
  const RedCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}
