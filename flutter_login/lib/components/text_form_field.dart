import 'package:flutter/material.dart';
import 'package:flutter_login/size.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: small_gap),
        TextFormField(
          // 1.
          // 유효성 검사를 할수 있다. 콜백 메서드로 호출되어질 예정.
          // 실행이 되면 TextFormField 밑에 빨간글씨로 경고글이 나옴.
          validator: (value) =>
              value!.isEmpty ? 'Please enter some text' : null,
          // 2.
          // 문자열을 **** 처리 해줌.
          obscureText:
              (text == 'Password') || (text == 'password') ? true : false,
          // 3.
          decoration: InputDecoration(
              hintText: 'Enter $text',
              // 기본 스타일
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              // 손가락으로 터치하여 포커스 잡혔을때
              focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              // 에러 발생시
              errorBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              // 에러 발생 후 손가락으로 터치하여 포커스 잡혔을때
              focusedErrorBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        )
      ],
    );
  }
}
