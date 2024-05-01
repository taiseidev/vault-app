import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/home/presentation/home_page.dart';

const homeTypedStatefulShellBranch = TypedStatefulShellBranch<HomeBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRoute>(
      path: '/home',
    ),
  ],
);

class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const HomePage();
}
