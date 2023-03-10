import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('coucou'),
        leading: Container(
          height: 20,
          width: 20,
          color: Colors.red,
        ),
      ),
      body: Center(
        child: Text(
          'coucou',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Center(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
