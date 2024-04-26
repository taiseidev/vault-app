import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vault_app/features/setting/presentation/setting_page.dart';

const settingTypedStatefulShellBranch = TypedStatefulShellBranch<SettingBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<SettingRoute>(
      path: "/setting",
    ),
  ],
);

class SettingBranch extends StatefulShellBranchData {
  const SettingBranch();
}

class SettingRoute extends GoRouteData {
  const SettingRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const SettingPage();
}
