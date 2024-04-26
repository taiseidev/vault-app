import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vault_app/features/auth/presentation/select_genre_page.dart';

@TypedGoRoute<SelectGenreRoute>(
  path: '/select_genre',
)
class SelectGenreRoute extends GoRouteData {
  const SelectGenreRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SelectGenrePage();
}
