import 'package:flutter/material.dart';
import 'package:vault_app/routing/route/auth/register_complete_route.dart';
import 'package:vault_app/routing/router/router.dart';

import '../../../common_widgets/custom_scaffold.dart';

class SelectGenrePage extends StatelessWidget {
  const SelectGenrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(title: const Text('ジャンル選択画面')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => const RegisterCompleteRoute().go(context),
              child: const Text('登録完了画面に遷移'),
            ),
          ],
        ),
      ),
    );
  }
}
