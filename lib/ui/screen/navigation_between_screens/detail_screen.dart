import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage<String>()
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: const Center(
        child: Text('This is the detail page.'),
      ),
    );
  }
}
