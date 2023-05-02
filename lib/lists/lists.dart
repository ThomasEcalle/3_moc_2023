import 'package:flutter/material.dart';
import 'package:moc_2023_3/lists/user.dart';
import 'package:moc_2023_3/lists/user_item.dart';

void main() {
  runApp(const ListsApp());
}

class ListsApp extends StatelessWidget {
  const ListsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(),
      ),
      home: ListsHome(),
    );
  }
}

class ListsHome extends StatelessWidget {
  ListsHome({Key? key}) : super(key: key);

  final List<User> _users = List.generate(
    100,
    (index) {
      return User(
        firstName: 'FirstName $index',
        lastName: 'LastName $index',
        address: 'Address $index',
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: _users.length,
          separatorBuilder: (context, index) {
            if (index % 5 == 0 && index != 0) {
              return Container(
                height: 30,
                color: Colors.orange,
              );
            }

            return const SizedBox();
          },
          itemBuilder: (context, index) {
            debugPrint('Building item $index');
            final user = _users[index];
            return UserItem(
              user: user,
              onTap: () {
                debugPrint('Clicked on user ${user.firstName}');
              },
            );
          },
        ),
      ),
    );
  }
}
