import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vault_app/features/auth/presentation/phone_number_input_page.dart';
import 'package:vault_app/routing/route/auth/auth_code_input_route.dart';
import 'package:vault_app/routing/route/auth/register_complete_route.dart';
import 'package:vault_app/routing/route/auth/select_genre_route.dart';
import 'package:vault_app/routing/route/radio/radio_branch.dart';

import '../../common_widgets/scaffold_with_navigation.dart';
import '../../features/init/presentation/init_page.dart';
import '../animation/routing_animation.dart';
import '../route/auth/notification_consent_route.dart';
import '../route/calendar/calendar_branch.dart';
import '../route/home/home_branch.dart';
import '../route/record/record_branch.dart';
import '../route/setting/setting_branch.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    routes: $appRoutes,
  );
}

/// アプリ起動時ルート
///
/// データ取得や認証ガード等
@TypedGoRoute<InitRoute>(
  path: '/',
)
class InitRoute extends GoRouteData {
  const InitRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const InitPage();
}

/// 認証ルート
///
/// 新規会員登録やログイン等
@TypedGoRoute<AuthRoute>(
  path: '/auth',
  routes: [
    TypedGoRoute<AuthCodeInputRoute>(
      path: 'auth_code_input',
      routes: [
        TypedGoRoute<NotificationConsentRoute>(
          path: 'notification_consent',
          routes: [
            TypedGoRoute<SelectGenreRoute>(
              path: 'select-genre',
              routes: [
                TypedGoRoute<RegisterCompleteRoute>(
                  path: 'register-complete',
                )
              ],
            )
          ],
        )
      ],
    )
  ],
)
class AuthRoute extends GoRouteData {
  const AuthRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PhoneNumberInputPage();
}

/// メインルート
///
/// BottomNavigationBarが表示されるメインとなるルート
@TypedStatefulShellRoute<MainRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    homeTypedStatefulShellBranch,
    recordTypedStatefulShellBranch,
    radioTypedStatefulShellBranch,
    calendarTypedStatefulShellBranch,
    settingTypedStatefulShellBranch,
  ],
)
class MainRoute extends StatefulShellRouteData {
  const MainRoute();

  @override
  Page<void> pageBuilder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return fadePageTransition(
        context: context,
        state: state,
        child: ScaffoldWithNavigation(navigationShell: navigationShell));
  }
}
