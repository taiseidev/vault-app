import 'package:flutter/material.dart';
import 'package:vault_app/common_widgets/custom_scaffold.dart';
import 'package:vault_app/common_widgets/media_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(title: const Text('ホーム画面')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MediaPage()),
              ),
              child: const Text('メディア詳細画面に遷移'),
            ),
          ],
        ),
      ),
    );
  }
}
