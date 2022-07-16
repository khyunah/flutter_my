import 'package:flutter/material.dart';
import 'package:flutter_login/components/text_form_field.dart';
import 'package:flutter_login/size.dart';

// Form 위젯
// 사용자의 입력을 받는 여러 위젯을 한번에 묶어 전송하고, 입력 요소의 유효성을 검사하는데 사용된다.
class MyForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          MyTextFormField('id'),
          SizedBox(height: medium_gap),
          MyTextFormField('password'),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, '/home');
              }
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
