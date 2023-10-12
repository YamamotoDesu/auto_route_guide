import 'package:auto_route/auto_route.dart';
import 'package:auto_route_guide/app/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage<String>()
class BookListScreen extends StatelessWidget {
  final List<String> books = [
    'To Kill a Mockingbird',
    '1984',
    'The Great Gatsby',
    'Pride and Prejudice',
    'The Catcher in the Rye',
    'Animal Farm',
    'Brave New World',
    'The Lord of the Rings',
    'The Hobbit',
    'The Chronicles of Narnia',
  ];

  BookListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book List'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(books[index]),
            onTap: () {
              // navigate to detail page
              AutoRouter.of(context).push(
                BookDetailRoute(bookId: index),
              );
            },
          );
        },
      ),
    );
  }
}
