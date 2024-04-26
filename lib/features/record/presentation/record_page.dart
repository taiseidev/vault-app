import 'package:flutter/material.dart';
import 'package:vault_app/common_widgets/custom_scaffold.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(title: const Text('記録画面')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}
