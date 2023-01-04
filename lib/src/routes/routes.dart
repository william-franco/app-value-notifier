import 'package:app_value_notifier/src/features/bottom/bottom_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final routesApp = Routes();

class Routes {
  static const String home = '/';

  final routes = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        pageBuilder: (context, state) => const CupertinoPage(
          child: BottomView(),
        ),
      ),
    ],
  );
}
