import 'package:flutter/material.dart';
import 'package:flutter_login/components/logo.dart';
import 'package:flutter_login/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: xlarge_gap + xlarge_gap),
            const Logo('Home'),
            const SizedBox(height: xlarge_gap),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('again login'),
            ),
          ],
        ),
      ),
    );
  }
}
