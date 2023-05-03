import 'package:flutter/material.dart';
import 'package:moc_2023_3/webservices/user.dart';
import 'package:moc_2023_3/webservices/webservices.dart';

class WebServicesHomeFutureBuilder extends StatelessWidget {
  const WebServicesHomeFutureBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemple FutureBuilder'),
      ),
      body: FutureBuilder<List<User>>(
        future: WebServices.getAllUsers(),
        builder: (context, AsyncSnapshot<List<User>> snapShot) {
          if (snapShot.hasError) {
            return const Center(
              child: Text('Erreur'),
            );
          }

          if (snapShot.hasData) {
            final users = snapShot.data;
            if (users == null || users.isEmpty) {
              return const Center(child: Text('No users'));
            }

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text('${user.userName}'),
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
