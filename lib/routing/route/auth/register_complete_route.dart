import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vault_app/features/auth/presentation/register_complete_page.dart';

@TypedGoRoute<RegisterCompleteRoute>(
  path: '/auth_code_input',
)
class RegisterCompleteRoute extends GoRouteData {
  const RegisterCompleteRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RegisterCompletePage();
}
