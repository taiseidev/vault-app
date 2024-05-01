import 'package:flutter/material.dart';
import 'package:vault_app/routing/route/auth/select_genre_route.dart';
import 'package:vault_app/routing/router/router.dart';

import '../../../common_widgets/custom_scaffold.dart';

class NotificationConsentPage extends StatelessWidget {
  const NotificationConsentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(title: const Text('通知許諾画面')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => const SelectGenreRoute().go(context),
              child: const Text('ジャンル選択画面に遷移'),
            ),
          ],
        ),
      ),
    );
  }
}
