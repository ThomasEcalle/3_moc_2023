import 'package:flutter/material.dart';
import 'package:moc_2023_3/lists/user.dart';

class UserItem extends StatelessWidget {
  UserItem({
    Key? key,
    required this.user,
    this.onTap,
  }) : super(key: key);

  VoidCallback? onTap;
  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${user.firstName} ${user.lastName}'),
      subtitle: Text(user.address),
      leading: const Icon(Icons.supervised_user_circle_outlined),
      onTap: onTap,
    );
  }
}
