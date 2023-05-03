import 'package:flutter/material.dart';
import 'package:moc_2023_3/navigation/screen_a.dart';
import 'package:moc_2023_3/navigation/screen_c.dart';

import 'screen_b.dart';

void main() async {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const NavigationHome(),
        ScreenB.routeName: (context) => const ScreenB(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case ScreenC.routeName:
            final arguments = settings.arguments;

            if (arguments is int) {
              return MaterialPageRoute(
                builder: (context) => ScreenC(id: arguments),
              );
            }

            break;
        }

        return MaterialPageRoute(
          builder: (context) => Container(
            color: Colors.blue,
          ),
        );
      },
    );
  }
}

class NavigationHome extends StatelessWidget {
  const NavigationHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Go to screen A'),
              onPressed: () => _goToScreenA(context),
            ),
            ElevatedButton(
              child: const Text('Go to screen B'),
              onPressed: () => _goToScreenB(context),
            ),
            ElevatedButton(
              child: const Text('Go to screen C'),
              onPressed: () => _goToScreenC(context),
            ),
          ],
        ),
      ),
    );
  }

  void _goToScreenC(BuildContext context) {
    ScreenC.navigateTo(context, 12);
  }

  void _goToScreenB(BuildContext context) {
    Navigator.of(context).pushNamed(ScreenB.routeName);
  }

  void _goToScreenA(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const ScreenA();
        },
      ),
    );
  }
}
