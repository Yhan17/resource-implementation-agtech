import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  await Process.run(
    'dart',
    [
      'run',
      'build_runner',
      'build',
      '--delete-conflicting-outputs',
    ],
    runInShell: true,
  );
}
