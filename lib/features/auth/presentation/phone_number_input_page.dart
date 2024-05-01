import 'package:flutter/material.dart';
import 'package:vault_app/routing/route/auth/auth_code_input_route.dart';
import 'package:vault_app/routing/router/router.dart';

import '../../../common_widgets/custom_scaffold.dart';

class PhoneNumberInputPage extends StatelessWidget {
  const PhoneNumberInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(title: const Text('電話番号入力画面')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => const AuthCodeInputRoute().go(context),
              child: const Text('認証コード入力画面に遷移'),
            ),
          ],
        ),
      ),
    );
  }
}
