import 'package:flutter/material.dart';
import 'package:flutter_login/components/form.dart';
import 'package:flutter_login/components/logo.dart';
import 'package:flutter_login/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const SizedBox(height: xlarge_gap),
              const Logo('Login'),
              const SizedBox(height: large_gap),
              MyForm(),
            ],
          ),
        ),
      ),
    );
  }
}
