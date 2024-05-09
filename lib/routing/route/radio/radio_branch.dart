import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/radio/radio_page.dart';

const radioTypedStatefulShellBranch = TypedStatefulShellBranch<RadioBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<RadioRoute>(
      path: "/radio",
    ),
  ],
);

class RadioBranch extends StatefulShellBranchData {
  const RadioBranch();
}

class RadioRoute extends GoRouteData {
  const RadioRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const RadioPage();
}
