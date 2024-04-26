import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/record/presentation/record_page.dart';

const recordTypedStatefulShellBranch = TypedStatefulShellBranch<RecordBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<RecordRoute>(
      path: "/record",
    ),
  ],
);

class RecordBranch extends StatefulShellBranchData {
  const RecordBranch();
}

class RecordRoute extends GoRouteData {
  const RecordRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const RecordPage();
}
