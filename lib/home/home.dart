import 'package:flutter/material.dart';
import 'package:moc_2023_3/home/tabs/home_tab.dart';
import 'package:moc_2023_3/home/tabs/settings_tab.dart';
import 'package:moc_2023_3/home/widgets/bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _tabs = const [
    HomeTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('coucou'),
        leading: Container(
          height: 20,
          width: 20,
          color: Colors.red,
        ),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomBar(
        name: 'Coucou',
        onTap: _onNewIndexClicked,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Center(
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void _onNewIndexClicked(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
    print('Coucou, new index is : $newIndex');
  }
}
