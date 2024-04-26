import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Page<T> fadePageTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  int duration = 1000,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: Duration(milliseconds: duration),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
