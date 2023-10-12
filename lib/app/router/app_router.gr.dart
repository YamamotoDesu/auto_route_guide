// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BookDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BookDetailRouteArgs>(
          orElse: () => BookDetailRouteArgs(bookId: pathParams.getInt('id')));
      return AutoRoutePage<String>(
        routeData: routeData,
        child: BookDetailScreen(
          key: args.key,
          bookId: args.bookId,
        ),
      );
    },
    BookListRoute.name: (routeData) {
      final args = routeData.argsAs<BookListRouteArgs>(
          orElse: () => const BookListRouteArgs());
      return AutoRoutePage<String>(
        routeData: routeData,
        child: BookListScreen(key: args.key),
      );
    },
    DetailRoute.name: (routeData) {
      return AutoRoutePage<String>(
        routeData: routeData,
        child: const DetailScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<String>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    UserRoute.name: (routeData) {
      final args = routeData.argsAs<UserRouteArgs>();
      return AutoRoutePage<String>(
        routeData: routeData,
        child: UserScreen(
          key: args.key,
          userName: args.userName,
        ),
      );
    },
  };
}

/// generated route for
/// [BookDetailScreen]
class BookDetailRoute extends PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({
    Key? key,
    required int bookId,
    List<PageRouteInfo>? children,
  }) : super(
          BookDetailRoute.name,
          args: BookDetailRouteArgs(
            key: key,
            bookId: bookId,
          ),
          rawPathParams: {'id': bookId},
          initialChildren: children,
        );

  static const String name = 'BookDetailRoute';

  static const PageInfo<BookDetailRouteArgs> page =
      PageInfo<BookDetailRouteArgs>(name);
}

class BookDetailRouteArgs {
  const BookDetailRouteArgs({
    this.key,
    required this.bookId,
  });

  final Key? key;

  final int bookId;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, bookId: $bookId}';
  }
}

/// generated route for
/// [BookListScreen]
class BookListRoute extends PageRouteInfo<BookListRouteArgs> {
  BookListRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          BookListRoute.name,
          args: BookListRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BookListRoute';

  static const PageInfo<BookListRouteArgs> page =
      PageInfo<BookListRouteArgs>(name);
}

class BookListRouteArgs {
  const BookListRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'BookListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DetailScreen]
class DetailRoute extends PageRouteInfo<void> {
  const DetailRoute({List<PageRouteInfo>? children})
      : super(
          DetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserScreen]
class UserRoute extends PageRouteInfo<UserRouteArgs> {
  UserRoute({
    Key? key,
    required String userName,
    List<PageRouteInfo>? children,
  }) : super(
          UserRoute.name,
          args: UserRouteArgs(
            key: key,
            userName: userName,
          ),
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static const PageInfo<UserRouteArgs> page = PageInfo<UserRouteArgs>(name);
}

class UserRouteArgs {
  const UserRouteArgs({
    this.key,
    required this.userName,
  });

  final Key? key;

  final String userName;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key, userName: $userName}';
  }
}
