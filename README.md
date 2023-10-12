# auto_route_guide

A new Flutter project.

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
