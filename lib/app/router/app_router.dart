import 'package:auto_route/auto_route.dart';
import 'package:auto_route_guide/ui/screen/passing_arguments/user_screen.dart';
import 'package:auto_route_guide/ui/screen/working_with_path/book_detail_screen.dart';
import 'package:auto_route_guide/ui/screen/working_with_path/book_list_screen.dart';
import 'package:auto_route_guide/ui/screen/navigation_between_screens/detail_screen.dart';
import 'package:auto_route_guide/ui/screen/home_screen.dart';
import 'package:flutter/material.dart';

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
        ),
        AutoRoute(
          path: '/books',
          page: BookListRoute.page,
        ),
        AutoRoute(
          path: '/user/:userName',
          page: UserRoute.page,
        ),
        AutoRoute(
          path: '/books/:id',
          page: BookDetailRoute.page,
        ),
      ];
}
