# [auto_route_guide](https://medium.com/@antonio.tioypedro1234/flutter-auto-route-guide-9ac405e8a941)

## Getting Started

```yaml
dependencies:                    
  auto_route: ^7.8.4

dev_dependencies:
  auto_route_generator: ^7.3.2
  build_runner: ^2.4.6
```

## Route Configuration
```dart
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_guide/detail_page.dart';
import 'package:auto_route_guide/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // add your routes here
        //HomeScreen is generated as HomeRoute because
        //of the replaceInRouteName property
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: DetailRoute.page,
        )
      ];
}
```

```dart
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_guide/app/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage<String>()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // navigate to detail page
            AutoRouter.of(context).push(const DetailRoute());
          },
          child: const Text('Go to detail page'),
        ),
      ),
    );
  }
}
```

```dart
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
```

## Passing Arguments
app_router.dart
```dart
        AutoRoute(
          path: '/user/:userName',
          page: UserRoute.page,
        ),
```

user_screen.dart
```dart
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
```


## Working with Paths
book_detail_page.dart
```dart
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

```

book_list_page.dart
```dart

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
```

## Implement with get_it

lib/service/service_locator.dart
```dart
import 'package:get_it/get_it.dart';

import '../app/router/app_router.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // services
  getIt.registerSingleton<AppRouter>(AppRouter());
}

```

lib/main.dart
```dart

void main() async {
  /// setup service locator
  await setupServiceLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  /// create an instance of `AppRouter`
  // inal _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // hook up router to MaterialApp
      routerConfig: getIt<AppRouter>().config(),
    );
  }
```
