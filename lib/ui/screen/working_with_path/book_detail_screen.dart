import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage<String>()
class BookDetailScreen extends StatelessWidget {
  final int bookId;

  const BookDetailScreen({
    super.key,
    @PathParam('id') required this.bookId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Detail'),
      ),
      body: Center(
        child: Text('Book ID: $bookId'),
      ),
    );
  }
}
