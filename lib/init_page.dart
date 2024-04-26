import 'package:flutter/material.dart';
import 'package:vault_app/debug_screen.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key, required this.title});

  final String title;

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DebugScreen(),
            )),
        child: const Icon(Icons.bug_report),
      ),
    );
  }
}
