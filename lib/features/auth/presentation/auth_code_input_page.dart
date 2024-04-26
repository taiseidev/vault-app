import 'package:flutter/material.dart';
import 'package:vault_app/routing/router/router.dart';

import '../../../common_widgets/custom_scaffold.dart';
import '../../../routing/route/auth/notification_consent_route.dart';

class AuthCodeInputPage extends StatelessWidget {
  const AuthCodeInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(title: const Text('認証コード入力画面')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => const NotificationConsentRoute().go(context),
              child: const Text('通知許諾画面に遷移'),
            )
          ],
        ),
      ),
    );
  }
}
