import 'package:auto_route_guide/app/router/app_router.dart';
import 'package:auto_route_guide/service/service_locator.dart';
import 'package:flutter/material.dart';

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
}
