import 'package:bankly/util/app_color.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String inputTextHint;

  const AppTextField({required this.inputTextHint,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 350,
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.darkBlue
              )
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 2
              )
            ),
            hintText: inputTextHint,
            hintStyle: const TextStyle(
              fontSize: 15
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20)
        ),
      ),
    );
  }
}