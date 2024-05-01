import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/calendar/presentation/calendar_page.dart';

const calendarTypedStatefulShellBranch =
    TypedStatefulShellBranch<CalendarBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<CalendarRoute>(
      path: '/calendar',
    ),
  ],
);

class CalendarBranch extends StatefulShellBranchData {
  const CalendarBranch();
}

class CalendarRoute extends GoRouteData {
  const CalendarRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const CalendarPage();
}
