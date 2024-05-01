import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.canPop = true,
    this.onPopInvoked,
  });

  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? floatingActionButton;
  final bool canPop;
  final void Function({required bool didPop})? onPopInvoked;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPop,
      onPopInvoked: (didPop) => onPopInvoked?.call(didPop: didPop),
      child: Scaffold(
        appBar: appBar,
        body: body,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
