import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vault_app/features/auth/presentation/notification_consent_page.dart';

@TypedGoRoute<NotificationConsentRoute>(
  path: '/notification_consent',
)
class NotificationConsentRoute extends GoRouteData {
  const NotificationConsentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NotificationConsentPage();
}
