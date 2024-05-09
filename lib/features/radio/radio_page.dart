import 'package:flutter/material.dart';
import 'package:vault_app/common_widgets/custom_scaffold.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(title: const Text('ラジオ画面')),
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
