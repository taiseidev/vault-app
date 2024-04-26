import 'package:flutter/material.dart';
import 'package:vault_app/routing/route/home/home_branch.dart';
import 'package:vault_app/routing/router/router.dart';

import '../../../common_widgets/custom_scaffold.dart';

class RegisterCompletePage extends StatelessWidget {
  const RegisterCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(title: const Text('登録完了画面')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => const HomeRoute().go(context),
              child: const Text('メイン画面に遷移'),
            )
          ],
        ),
      ),
    );
  }
}
