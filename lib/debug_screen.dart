import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DebugScreen extends StatelessWidget {
  const DebugScreen({super.key});

  Future<PackageInfo> _getPackageInfo() async {
    return await PackageInfo.fromPlatform();
  }

  Widget title(String title) => Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget content(String title) => Text(
        title,
        style: const TextStyle(
          fontSize: 16,
        ),
      );

  Widget gapH(double height) => SizedBox(height: height);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        child: FutureBuilder(
          future: _getPackageInfo(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            if (snapshot.connectionState == ConnectionState.done) {
              final data = snapshot.data;
              if (data == null) {
                return const Center(
                  child: Text('データがありません'),
                );
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title('アプリ名'),
                  content(data.appName),
                  gapH(8),
                  title('ビルド番号'),
                  content(data.buildNumber),
                  gapH(8),
                  title('ID'),
                  content(data.packageName),
                  gapH(8),
                  title('アプリバージョン'),
                  content(data.version),
                ],
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
