import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vault_app/features/auth/presentation/phone_number_input_page.dart';
import 'package:vault_app/routing/route/auth/auth_code_input_route.dart';
import 'package:vault_app/routing/route/auth/register_complete_route.dart';
import 'package:vault_app/routing/route/auth/select_genre_route.dart';

import '../../common_widgets/media_page.dart';
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
                ),
              ],
            ),
          ],
        ),
      ],
    ),
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
      child: ScaffoldWithNavigation(navigationShell: navigationShell),
    );
  }
}

/// メディアのルート
///
/// メディア（ドラマ・映画）の詳細画面から遷移するルート
@TypedGoRoute<MediaRoute>(
  path: '/media',
  routes: [
    TypedGoRoute<ReviewRoute>(
      path: 'review',
    ),
    TypedGoRoute<ActorRoute>(
      path: 'actor',
    ),
    TypedGoRoute<DirectorRoute>(
      path: 'director',
    ),
    TypedGoRoute<GenreRoute>(
      path: 'genre',
    ),
  ],
)
class MediaRoute extends GoRouteData {
  const MediaRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const MediaPage();
}

class ReviewRoute extends GoRouteData {
  const ReviewRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SizedBox.shrink();
}

class ActorRoute extends GoRouteData {
  const ActorRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SizedBox.shrink();
}

class DirectorRoute extends GoRouteData {
  const DirectorRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SizedBox.shrink();
}

class GenreRoute extends GoRouteData {
  const GenreRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SizedBox.shrink();
}
