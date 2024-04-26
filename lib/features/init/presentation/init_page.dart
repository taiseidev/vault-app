import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vault_app/extensions/async_value_extension.dart';
import 'package:vault_app/features/init/domain/usecase/init_usecase.dart';
import 'package:vault_app/routing/router/router.dart';

import '../../../common_widgets/custom_scaffold.dart';
import '../../../routing/route/home/home_branch.dart';
import 'init_state.dart';

class InitPage extends ConsumerWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final init = ref.watch(initUsecaseProvider);

    void navigate(InitState state) {
      if (state.isLoggedIn) {
        const HomeRoute().go(context);
      } else {
        const AuthRoute().go(context);
      }
    }

    ref.listen(
      initUsecaseProvider,
      (_, data) {
        if (data.isData) {
          navigate(data.valueOrNull!);
        }
      },
    );

    return CustomScaffold(
      appBar: AppBar(),
      body: switch (init) {
        AsyncData() => const SizedBox.shrink(),
        AsyncError(:final error) => Text('error: $error'),
        // TODO(taisei): データ取得中のローディング表示
        _ => const Center(
            child: CircularProgressIndicator(),
          ),
      },
    );
  }
}
