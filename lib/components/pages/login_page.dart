import 'package:flutter/material.dart';
import 'package:flutter_study/notifiers/auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends ConsumerWidget {
  static const path = '/login';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.read(authProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Login page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: authNotifier.login,
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
