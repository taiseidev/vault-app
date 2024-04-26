import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/auth/presentation/auth_code_input_page.dart';

@TypedGoRoute<AuthCodeInputRoute>(
  path: '/auth_code_input',
)
class AuthCodeInputRoute extends GoRouteData {
  const AuthCodeInputRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AuthCodeInputPage();
}
