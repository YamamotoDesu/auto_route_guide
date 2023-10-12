import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage<String>()
class UserScreen extends StatelessWidget {
  final String userName;

  const UserScreen({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User $userName'),
      ),
      body: Center(
        child: Text('User $userName'),
      ),
    );
  }
}
