import 'package:flutter/material.dart';
import 'package:moc_2023_3/webservices/user.dart';
import 'package:moc_2023_3/webservices/webserices_home_futurebuilder.dart';
import 'package:moc_2023_3/webservices/webservices.dart';

void main() {
  runApp(const WebServicesApp());
}

class WebServicesApp extends StatelessWidget {
  const WebServicesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WebServicesHomeFutureBuilder(),
    );
  }
}

class WebServicesHome extends StatefulWidget {
  const WebServicesHome({Key? key}) : super(key: key);

  @override
  State<WebServicesHome> createState() => _WebServicesHomeState();
}

class _WebServicesHomeState extends State<WebServicesHome> {
  bool _loading = true;
  List<User> _users = [];
  String? _error;

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    try {
      final users = await WebServices.getAllUsers();
      setState(() {
        _loading = false;
        _users.addAll(users);
      });
    } catch (error) {
      setState(() {
        _loading = false;
        _error = 'Une erreur est survenue';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coucou'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    if(_loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_error != null) {
      return Center(
        child: Text(_error ?? ''),
      );
    }

    if(_users.isEmpty) {
      return const Center(
        child: Text('Oups, aucun utilisateur'),
      );
    }

    return ListView.builder(
      itemCount: _users.length,
      itemBuilder: (context, index) {
        final user = _users[index];
        return ListTile(
          title: Text('${user.userName}'),
        );
      },
    );
  }
}
