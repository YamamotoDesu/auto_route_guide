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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // navigate to detail page
                AutoRouter.of(context).push(const DetailRoute());
              },
              child: const Text('Go to detail page'),
            ),
            ElevatedButton(
              onPressed: () {
                // navigate to user page
                AutoRouter.of(context).push(
                  UserRoute(
                    userName: 'Yamamoto',
                  ),
                );
              },
              child: const Text('Go to user page'),
            ),
            ElevatedButton(
              onPressed: () {
                // navigate to book list page
                AutoRouter.of(context).push(BookListRoute());
              },
              child: const Text('Go to book list page'),
            ),
          ],
        ),
      ),
    );
  }
}
